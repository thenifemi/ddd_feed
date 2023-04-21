import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:heroicons/heroicons.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/posts/posts_bloc.dart';
import '../../core/colors/colors.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/theme/theme.dart';
import '../widgets/action_button.dart';
import '../widgets/app_buttons.dart';
import '../widgets/app_textfields.dart';

class CreatePostScreen extends HookWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final pickedFile = useState<File?>(null);

    return BlocConsumer<PostsBloc, PostsState>(
      listener: (context, state) {
        print(state);
        state.failureOrUnitOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Something went wrong.",
                    style: themeData.textTheme.displaySmall?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  backgroundColor: AppColors.red,
                ),
              );
            },
            (_) {
              Navigator.of(context).pop();
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.sm),
              child: state.isLoading
                  ? Center(
                      child: Text(
                        "Loading... Hang Tight!",
                        style: themeData.textTheme.displaySmall,
                      ),
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            ActionButton(
                              heroIcons: HeroIcons.xCircle,
                              heroIconStyle: HeroIconStyle.outline,
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            Space.vSM(context),
                            Text(
                              "Create post",
                              style: themeData.textTheme.displayMedium,
                            ),
                            const Spacer(),
                            AppButton(
                              onPressed: () {
                                FocusScope.of(context).unfocus();

                                context.read<PostsBloc>().add(CreatePost(
                                      content: controller.text,
                                      photo: pickedFile.value,
                                    ));
                              },
                              child: Text(
                                "Post",
                                style: themeData.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        Space.hSM(context),
                        AppTextfield(
                          controller: controller,
                          hintText: 'Tell your circle what\'s happening.',
                        ),
                        Space.hXSM(context),
                        if (pickedFile.value != null) ...[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.file(
                              pickedFile.value!,
                              height: 200,
                              width: width(context),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Space.hXSM(context),
                        ],
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ActionButton(
                              onTap: () async {
                                final pickedAsset = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);

                                if (pickedAsset != null) {
                                  pickedFile.value = File(pickedAsset.path);
                                }
                              },
                              heroIcons: HeroIcons.photo,
                              heroIconStyle: HeroIconStyle.outline,
                              label: pickedFile.value != null
                                  ? "Replace photo"
                                  : "Add a photo",
                            ),
                            if (pickedFile.value != null)
                              ActionButton(
                                onTap: () async {
                                  pickedFile.value = null;
                                },
                                heroIcons: HeroIcons.trash,
                                heroIconStyle: HeroIconStyle.outline,
                                color: AppColors.red,
                                label: "Remove photo",
                              ),
                          ],
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroicons/heroicons.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../application/posts/posts_bloc.dart';
import '../../../domain/posts/post_response.dart';
import '../../core/colors/colors.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/theme/theme.dart';
import 'action_button.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      margin: const EdgeInsets.only(bottom: AppSizes.xsm),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.greyDark,
            width: 0.2,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.sm,
              vertical: AppSizes.xsm,
            ),
            child: Row(
              children: [
                HeroIcon(
                  HeroIcons.userCircle,
                  style: HeroIconStyle.solid,
                  color: AppColors.greyDark,
                  size: AppSizes.md,
                ),
                Space.vXSM(context),
                Text(
                  post.name,
                  style: themeData.textTheme.bodyMedium,
                ),
                if (post.isVerified)
                  HeroIcon(
                    HeroIcons.checkBadge,
                    style: HeroIconStyle.solid,
                    color: AppColors.greyDark,
                    size: AppSizes.sm,
                  ),
                Space.vXSM(context),
                Text(
                  post.handle,
                  style: themeData.textTheme.bodySmall?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const Spacer(),
                Text(
                  timeago.format(
                    post.time,
                  ),
                  style: themeData.textTheme.bodySmall,
                ),
                Space.vXSM(context),
                const ActionButton(
                  heroIcons: HeroIcons.ellipsisHorizontal,
                  heroIconStyle: HeroIconStyle.outline,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.sm,
            ),
            child: Text(
              post.content,
              style: themeData.textTheme.bodyLarge,
            ),
          ),
          if (post.image != null) ...[
            Space.hXSM(context),
            post.handle == '@currentuser'
                ? Image.file(File(post.image!),
                    fit: BoxFit.cover,
                    height: 220,
                    width: width(context), errorBuilder: (
                    BuildContext context,
                    Object exception,
                    StackTrace? stackTrace,
                  ) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HeroIcon(
                          HeroIcons.exclamationTriangle,
                          style: HeroIconStyle.outline,
                          color: AppColors.greyDark,
                          size: AppSizes.md,
                        ),
                        Space.vXSM(context),
                        Text(
                          "Image Unavailable",
                          style: themeData.textTheme.displaySmall,
                        ),
                      ],
                    );
                  })
                : Image.network(
                    post.image!,
                    fit: BoxFit.cover,
                    height: 220,
                    width: width(context),
                    loadingBuilder: (
                      BuildContext context,
                      Widget child,
                      ImageChunkEvent? loadingProgress,
                    ) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  )
          ],
          Space.hXSM(context),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.sm,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  label: post.comments.toString(),
                  heroIcons: HeroIcons.chatBubbleLeft,
                  heroIconStyle: HeroIconStyle.outline,
                ),
                ActionButton(
                  label: post.likes.toString(),
                  heroIcons: HeroIcons.heart,
                  heroIconStyle:
                      post.liked ? HeroIconStyle.solid : HeroIconStyle.outline,
                  color: post.liked ? AppColors.red : null,
                  onTap: () {
                    context.read<PostsBloc>().add(
                          LikePostPressed(postId: post.id),
                        );
                  },
                ),
                ActionButton(
                  label: post.dislikes.toString(),
                  heroIcons: HeroIcons.arrowDownCircle,
                  heroIconStyle: post.disliked
                      ? HeroIconStyle.solid
                      : HeroIconStyle.outline,
                  color: post.disliked ? AppColors.orange : null,
                  onTap: () {
                    context.read<PostsBloc>().add(
                          DislikePostPressed(postId: post.id),
                        );
                  },
                ),
                ActionButton(
                    heroIcons: HeroIcons.bookmark,
                    heroIconStyle: post.bookmarked
                        ? HeroIconStyle.solid
                        : HeroIconStyle.outline,
                    onTap: () {
                      context.read<PostsBloc>().add(
                            BookmarkPostPressed(postId: post.id),
                          );
                    }),
              ],
            ),
          ),
          Space.hXSM(context),
        ],
      ),
    );
  }
}

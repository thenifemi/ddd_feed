import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/posts/posts_bloc.dart';
import '../../core/colors/colors.dart';
import '../../core/theme/theme.dart';
import '../widgets/empty_feed.dart';
import '../widgets/error_feed.dart';
import '../widgets/post_item.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: Text(
              "Loading... Hang Tight!",
              style: themeData.textTheme.displaySmall,
            ),
          );
        }

        return state.failureOrResponseOption.fold(
          () => Container(),
          (either) => either.fold(
            (failure) => const ErrorFeed(),
            (postsResponse) {
              final posts = postsResponse.posts;

              if (posts.isEmpty) {
                return const EmptyFeed();
              }

              return RefreshIndicator(
                onRefresh: () async {
                  context.read<PostsBloc>().add(GetPosts());
                },
                backgroundColor: AppColors.greyDark,
                color: AppColors.white,
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (BuildContext context, int index) {
                    final post = postsResponse.posts[index];

                    return PostItem(
                      post: post,
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}

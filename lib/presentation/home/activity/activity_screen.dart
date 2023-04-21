import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/posts/posts_bloc.dart';
import '../../core/colors/colors.dart';
import '../../core/theme/theme.dart';
import '../widgets/empty_feed.dart';
import '../widgets/error_feed.dart';
import '../widgets/post_item.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List tabBarItems = [
      {
        'index': 0,
        'title': 'Likes',
      },
      {
        'index': 1,
        'title': 'Dislikes',
      },
      {
        'index': 2,
        'title': 'Bookmarks',
      },
    ];

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

              return DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: AppColors.greyDark,
                      tabs: tabBarItems
                          .map((item) => Tab(text: item['title']))
                          .toList(),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: tabBarItems.map((item) {
                          final tabposts = posts.where((post) {
                            switch (item['index']) {
                              case 0:
                                return post.liked;
                              case 1:
                                return post.disliked;
                              default:
                                return post.bookmarked;
                            }
                          }).toList();

                          return ListView.builder(
                            itemCount: tabposts.length,
                            itemBuilder: (BuildContext context, int index) {
                              final post = tabposts[index];

                              return PostItem(
                                post: post,
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure.dart';
import '../../domain/posts/post_interface.dart';
import '../../domain/posts/post_response.dart';
import '../core/init_posts.dart';

@LazySingleton(as: PostsInterface)
class PostsRepository implements PostsInterface {
  @override
  Future<Either<Failure, Unit>> createPost({
    required String content,
    File? photo,
  }) async {
    try {
      var dbBox = await Hive.openBox<PostsResponse>('postResponse');

      if (dbBox.isEmpty) {
        return left(const Failure.serverError());
      }

      // Get the posts from dbBox and add the new post to the list
      var posts = dbBox.get('posts')!.posts;
      posts.insert(
        0,
        Post(
          id: posts.length + 1,
          name: 'Current User',
          handle: '@currentuser',
          time: DateTime.now(),
          content: content,
          image: photo?.path,
          likes: 0,
          comments: 0,
          dislikes: 0,
          isVerified: true,
          liked: false,
          disliked: false,
          bookmarked: false,
        ),
      );

      // Update the posts in the dbBox
      dbBox.put('posts', PostsResponse(posts: posts));

      return right(unit);
    } on SocketException catch (_) {
      return left(const Failure.noInternet());
    }
  }

  @override
  Future<Either<Failure, Unit>> likePostPressed({required int postId}) async {
    try {
      var dbBox = await Hive.openBox<PostsResponse>('postResponse');

      if (dbBox.isEmpty) {
        return left(const Failure.serverError());
      }

      // Get the posts from dbBox and like/unlike the post where post.id is equal to the postId passed in
      var posts = dbBox.get('posts')!.posts;
      var post = posts.firstWhere((post) => post.id == postId);

      // if the post is already disliked, then remove the dislike
      if (post.disliked) {
        post.disliked = false;
        post.dislikes -= 1;
      }

      // then like/unlike the post
      post.liked = !post.liked;
      post.likes = post.liked ? post.likes + 1 : post.likes - 1;

      // Update the posts in the dbBox
      dbBox.put('posts', PostsResponse(posts: posts));

      return right(unit);
    } on SocketException catch (_) {
      return left(const Failure.noInternet());
    }
  }

  @override
  Future<Either<Failure, Unit>> dislikePostPressed(
      {required int postId}) async {
    try {
      var dbBox = await Hive.openBox<PostsResponse>('postResponse');

      if (dbBox.isEmpty) {
        return left(const Failure.serverError());
      }

      // Get the posts from dbBox and dislike/un-dislike the post where post.id is equal to the postId passed in
      var posts = dbBox.get('posts')!.posts;
      var post = posts.firstWhere((post) => post.id == postId);

      // if the post is already liked, then remove the like
      if (post.liked) {
        post.liked = false;
        post.likes -= 1;
      }

      // then dislike/un-dislike the post
      post.disliked = !post.disliked;
      post.dislikes = post.disliked ? post.dislikes + 1 : post.dislikes - 1;

      // Update the posts in the dbBox
      dbBox.put('posts', PostsResponse(posts: posts));

      return right(unit);
    } on SocketException catch (_) {
      return left(const Failure.noInternet());
    }
  }

  @override
  Future<Either<Failure, Unit>> bookmarkPostPressed({
    required int postId,
  }) async {
    try {
      var dbBox = await Hive.openBox<PostsResponse>('postResponse');

      if (dbBox.isEmpty) {
        return left(const Failure.serverError());
      }

      // Get the posts from dbBox and bookmark/unbookmark the post where post.id is equal to the postId passed in
      var posts = dbBox.get('posts')!.posts;
      var post = posts.firstWhere((post) => post.id == postId);
      post.bookmarked = !post.bookmarked;

      // Update the posts in the dbBox
      dbBox.put('posts', PostsResponse(posts: posts));

      return right(unit);
    } on SocketException catch (_) {
      return left(const Failure.noInternet());
    }
  }

  @override
  Future<Either<Failure, PostsResponse>> getPosts() async {
    try {
      var dbBox = await Hive.openBox<PostsResponse>('postResponse');

      // if the dbBox is null, return an empty posts response
      return right(dbBox.get('posts') ?? PostsResponse.empty());
    } on SocketException catch (_) {
      return left(const Failure.noInternet());
    }
  }

  @override
  Future<Either<Failure, PostsResponse>> generateInitPosts() async {
    try {
      var dbBox = await Hive.openBox<PostsResponse>('postResponse');
      await dbBox.put('posts', PostsResponse.fromJson(initPosts));

      // If the dbBox is empty or the posts are null, return a server error
      if (dbBox.isEmpty || dbBox.get('posts') == null) {
        return left(const Failure.serverError());
      }

      return right(dbBox.get('posts')!);
    } on SocketException catch (_) {
      return left(const Failure.noInternet());
    }
  }
}

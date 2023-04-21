import 'dart:io';

import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import 'post_response.dart';

abstract class PostsInterface {
  Future<Either<Failure, PostsResponse>> getPosts();
  Future<Either<Failure, PostsResponse>> generateInitPosts();
  Future<Either<Failure, Unit>> likePostPressed({required int postId});
  Future<Either<Failure, Unit>> dislikePostPressed({required int postId});
  Future<Either<Failure, Unit>> bookmarkPostPressed({required int postId});
  Future<Either<Failure, Unit>> createPost({
    required String content,
    File? photo,
  });
}

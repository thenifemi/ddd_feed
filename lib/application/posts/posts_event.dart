part of 'posts_bloc.dart';

@immutable
abstract class PostsEvent {}

class GetPosts extends PostsEvent {}

class GenerateInitPosts extends PostsEvent {}

class LikePostPressed extends PostsEvent {
  final int postId;

  LikePostPressed({required this.postId});
}

class DislikePostPressed extends PostsEvent {
  final int postId;

  DislikePostPressed({required this.postId});
}

class BookmarkPostPressed extends PostsEvent {
  final int postId;

  BookmarkPostPressed({required this.postId});
}

class CreatePost extends PostsEvent {
  final String content;
  final File? photo;

  CreatePost({required this.content, this.photo});
}

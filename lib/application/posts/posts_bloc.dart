import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure.dart';
import '../../domain/posts/post_interface.dart';
import '../../domain/posts/post_response.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostsInterface postsInterface;

  PostsBloc(this.postsInterface) : super(PostsState.initial()) {
    on<GetPosts>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          failureOrResponseOption: none(),
        ),
      );

      final result = await postsInterface.getPosts();

      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            failureOrResponseOption: some(left(failure)),
          ),
        ),
        (postsResponse) => emit(
          state.copyWith(
            isLoading: false,
            failureOrResponseOption: some(right(postsResponse)),
          ),
        ),
      );
    });

    on<GenerateInitPosts>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          failureOrResponseOption: none(),
        ),
      );

      final result = await postsInterface.generateInitPosts();

      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            failureOrResponseOption: some(left(failure)),
          ),
        ),
        (postsResponse) => emit(
          state.copyWith(
            isLoading: false,
            failureOrResponseOption: some(right(postsResponse)),
          ),
        ),
      );
    });

    on<CreatePost>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          failureOrUnitOption: none(),
        ),
      );

      final result = await postsInterface.createPost(
        content: event.content,
        photo: event.photo,
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            isLoading: false,
            failureOrResponseOption: some(left(failure)),
          ),
        ),
        (postsResponse) => emit(
          state.copyWith(
            isLoading: false,
            failureOrUnitOption: some(right(postsResponse)),
          ),
        ),
      );
    });

    on<LikePostPressed>((event, emit) async {
      emit(
        state.copyWith(
          failureOrUnitOption: none(),
        ),
      );

      final result = await postsInterface.likePostPressed(
        postId: event.postId,
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            failureOrResponseOption: some(left(failure)),
          ),
        ),
        (postsResponse) => emit(
          state.copyWith(
            failureOrUnitOption: some(right(postsResponse)),
          ),
        ),
      );
    });

    on<DislikePostPressed>((event, emit) async {
      emit(
        state.copyWith(
          failureOrUnitOption: none(),
        ),
      );

      final result = await postsInterface.dislikePostPressed(
        postId: event.postId,
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            failureOrResponseOption: some(left(failure)),
          ),
        ),
        (postsResponse) => emit(
          state.copyWith(
            failureOrUnitOption: some(right(postsResponse)),
          ),
        ),
      );
    });

    on<BookmarkPostPressed>((event, emit) async {
      emit(
        state.copyWith(
          failureOrUnitOption: none(),
        ),
      );

      final result = await postsInterface.bookmarkPostPressed(
        postId: event.postId,
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            failureOrResponseOption: some(left(failure)),
          ),
        ),
        (postsResponse) => emit(
          state.copyWith(
            failureOrUnitOption: some(right(postsResponse)),
          ),
        ),
      );
    });
  }
}

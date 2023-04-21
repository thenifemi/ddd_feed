part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    required bool isLoading,
    required Option<Either<Failure, PostsResponse>> failureOrResponseOption,
    required Option<Either<Failure, Unit>> failureOrUnitOption,
  }) = _PostsState;

  factory PostsState.initial() => PostsState(
        isLoading: false,
        failureOrResponseOption: none(),
        failureOrUnitOption: none(),
      );
}

part of 'story_cubit.dart';

abstract class StoryState {}

class StoryInitial extends StoryState {}

class StoryLoading extends StoryState {}

class StorySuccess extends StoryState {
  final String story;
  StorySuccess({required this.story});
}

class StoryFailure extends StoryState {
  final String errorMessage;
  StoryFailure({required this.errorMessage});
}

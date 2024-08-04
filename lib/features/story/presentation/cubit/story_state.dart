part of 'story_cubit.dart';

abstract class StoryState extends Equatable {
  const StoryState();

  @override
  List<Object> get props => [];
}

class StoryInitial extends StoryState {}

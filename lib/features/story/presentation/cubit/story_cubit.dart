import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'story_state.dart';

class StoryCubit extends Cubit<StoryState> {
  StoryCubit() : super(StoryInitial());
}

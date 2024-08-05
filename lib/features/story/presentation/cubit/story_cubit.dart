import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'story_state.dart';

class StoryCubit extends Cubit<StoryState> {
  StoryCubit() : super(StoryInitial());
}

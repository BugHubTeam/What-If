import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/generate_story_use_case.dart';
part 'story_state.dart';

class StoryCubit extends Cubit<StoryState> {
  StoryCubit(
    this._generateStoryUseCase,
  ) : super(StoryInitial());
  final GenerateStoryUseCase _generateStoryUseCase;

  static StoryCubit get(context) => BlocProvider.of<StoryCubit>(context);

  Future<void> generateStory(
      {required Map<String, dynamic> data, required String language}) async {
    emit(StoryLoading());
    var result =
        await _generateStoryUseCase.execute(data: data, language: language);
    result.fold(
      (failure) {
        emit(StoryFailure(errorMessage: failure.message));
      },
      (story) {
        emit(StorySuccess(story: story));
      },
    );
  }
}

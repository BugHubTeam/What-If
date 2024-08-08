import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../repositories/story_ropo.dart';

class GenerateStoryUseCase {
  final StoryRepo _storyRepo;

  GenerateStoryUseCase(this._storyRepo);

  Future<Either<Failure, String>> execute({
    required Map<String, dynamic> data,
    required String language,
  }) async {
    return await _storyRepo.generateStory(data: data, language: language);
  }
}

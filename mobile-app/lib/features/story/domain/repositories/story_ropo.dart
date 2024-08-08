import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

abstract class StoryRepo {
  Future<Either<Failure, String>> generateStory({
    required Map<String, dynamic> data,
    required String language,
  });
}

import 'package:dartz/dartz.dart';
import 'package:what_if/core/errors/failure.dart';

abstract class QuestionsRepo {
  Future<Either<Failure, List<String>>> getAllQuestions({
    required String name,
    required String language,
  });
}

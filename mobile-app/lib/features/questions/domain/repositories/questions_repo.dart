import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

abstract class QuestionsRepo {
  Future<Either<Failure, List<String>>> getAllQuestions({
    required String name,
    required String language,
  });
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:what_if/features/questions/domain/repositories/questions_repo.dart';
import '../../../../core/errors/failure.dart';

class GetAllQustionsUseCase {
  final QuestionsRepo _questionsRepo;
  GetAllQustionsUseCase({
    required QuestionsRepo questionsRepo,
  }) : _questionsRepo = questionsRepo;

  Future<Either<Failure, List<String>>> execute({
    required String name,
    required String language,
  }) async {
    return await _questionsRepo.getAllQuestions(name: name, language: language);
  }
}

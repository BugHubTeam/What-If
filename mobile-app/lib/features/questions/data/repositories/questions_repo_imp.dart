import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/api/api_manager.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/errors/server_failure.dart';
import '../../domain/repositories/questions_repo.dart';

class QuestionsRepoImp implements QuestionsRepo {
  final ApiManager _apiManager;
  QuestionsRepoImp({
    required ApiManager apiManager,
  }) : _apiManager = apiManager;
  @override
  Future<Either<Failure, List<String>>> getAllQuestions({
    required String name,
    required String language,
  }) async {
    try {
      var data = await _apiManager.post(
        endPoint: '${EndPoints.generateQuestions}?language=$language',
        data: {'name': name},
      );
      List<dynamic> questionList = data['questions'];
      List<String> questions = [];
      for (var element in questionList) {
        questions.add(element);
      }

      return Right(questions);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}

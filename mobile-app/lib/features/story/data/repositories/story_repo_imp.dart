import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/api/api_manager.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/errors/server_failure.dart';
import '../../domain/repositories/story_ropo.dart';
import '../../../../core/errors/failure.dart';

class StoryRepoImp implements StoryRepo {
  final ApiManager _apiManager;

  StoryRepoImp(this._apiManager);
  @override
  Future<Either<Failure, String>> generateStory(
      {required Map<String, dynamic> data, required String language}) async {
    try {
      var result = await _apiManager.post(
        endPoint: '${EndPoints.generateStory}?language=$language',
        data: data,
      );
      String story = result['Story'];
      return Right(story);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}

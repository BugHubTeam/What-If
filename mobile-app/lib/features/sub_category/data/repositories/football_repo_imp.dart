import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:what_if/core/api/end_points.dart';
import '../../../../core/api/api_manager.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/errors/server_failure.dart';
import '../../domain/entities/sub_category_entity.dart';
import '../../domain/repositories/football_repo.dart';

class FootballRepoImp implements FootballRepo {
  final ApiManager _apiManager;
  FootballRepoImp(this._apiManager);

  @override
  Future<Either<Failure, List<SubCategoryEntity>>> getFootballData({
    bool getPlayers = false,
    String? name,
  }) async {
    try {
      var result = await _apiManager.get(
        endPoint: getPlayers
            ? name == null
                ? EndPoints.getPlayers
                : '${EndPoints.getPlayers}&name=$name'
            : name == null
                ? EndPoints.getClubs
                : '${EndPoints.getClubs}&name=$name',
      );

      List<dynamic> dataList = result['data'];
      List<SubCategoryEntity> footballData = [];

      for (var element in dataList) {
        footballData.add(
          SubCategoryEntity.fromJson(element, isPlayer: getPlayers),
        );
      }

      return Right(footballData);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}

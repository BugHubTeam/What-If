import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:what_if/core/api/api_manager.dart';
import 'package:what_if/core/errors/failure.dart';
import 'package:what_if/core/errors/server_failure.dart';
import '../../../../core/api/end_points.dart';
import '../../domain/entities/sub_category_entity.dart';
import '../../domain/repositories/movie_repo.dart';
import '../models/movie_model.dart';

class MovieRopoImp implements MovieRepo {
  final ApiManager _apiManager;
  MovieRopoImp(this._apiManager);
  @override
  Future<Either<Failure, List<SubCategoryEntity>>> getMovies(
      {String? name}) async {
    try {
      var data = await _apiManager.get(
        baseUrl2: 'https://api.themoviedb.org/3',
        endPoint:
            name == null ? '/movie/top_rated' : '/search/movie?query=$name',
        token: EndPoints.apikey,
      );
      List<dynamic> moviesList = data['results'];
      List<SubCategoryEntity> movies = [];
      for (var element in moviesList) {
        movies.add(MovieModel.fromJson(element));
      }

      return Right(movies);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}

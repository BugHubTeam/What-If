import 'package:dartz/dartz.dart';
import 'package:what_if/core/errors/failure.dart';
import '../entities/sub_category_entity.dart';

abstract class FootballRepo {
  Future<Either<Failure, List<SubCategoryEntity>>> getFootballData({bool getPlayers = false});
}

import 'package:dartz/dartz.dart';
import 'package:what_if/core/errors/failure.dart';
import '../entities/sub_category_entity.dart';
import '../repositories/football_repo.dart';

class GetFootballDataUseCase {
  final FootballRepo _footballRepo;
  GetFootballDataUseCase(this._footballRepo);
  Future<Either<Failure, List<SubCategoryEntity>>> execute({
    bool getPlayers = false,
    String? name,
  }) async {
    return await _footballRepo.getFootballData(
      getPlayers: getPlayers,
      name: name,
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:what_if/core/errors/failure.dart';
import 'package:what_if/features/sub_category/domain/repositories/movie_repo.dart';
import '../entities/sub_category_entity.dart';

class GetMoviesUseCase {
  final MovieRepo _movieRepo;
  GetMoviesUseCase(this._movieRepo);
  Future<Either<Failure, List<SubCategoryEntity>>> execute({String? name}) async {
    return await _movieRepo.getMovies(name: name);
  }
}

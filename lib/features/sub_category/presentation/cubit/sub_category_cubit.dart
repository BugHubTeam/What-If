import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_if/features/sub_category/domain/use_cases/get_football_data_use_case.dart';
import 'package:what_if/features/sub_category/domain/use_cases/get_movies_use_case.dart';
import '../../domain/entities/sub_category_entity.dart';
part 'sub_category_state.dart';

class SubCategoryCubit extends Cubit<SubCategoryState> {
  SubCategoryCubit(this._getMoviesUseCase, this._getFootballDataUseCase)
      : super(SubCategoryInitial());
  final GetMoviesUseCase _getMoviesUseCase;
  final GetFootballDataUseCase _getFootballDataUseCase;

  static SubCategoryCubit get(context) => BlocProvider.of(context);
  static late String subCategoryName;

  //getMovies
  Future<void> getMovies({String? name}) async {
    emit(SubCategoryLoading());
    var result = await _getMoviesUseCase.execute(name: name);
    result.fold(
      (failure) {
        emit(SubCategoryFailure(failure.message));
      },
      (movies) {
        emit(SubCategorySuccess(movies));
      },
    );
  }

  //getFootballData
  Future<void> getFootballData({bool getPlayers = false}) async {
    emit(SubCategoryLoading());
    var result = await _getFootballDataUseCase.execute(getPlayers: getPlayers);
    result.fold(
      (failure) {
        emit(SubCategoryFailure(failure.message));
      },
      (foootballData) {
        emit(SubCategorySuccess(foootballData));
      },
    );
  }
}

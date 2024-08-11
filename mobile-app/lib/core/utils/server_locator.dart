import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:what_if/core/api/api_manager.dart';
import 'package:what_if/features/story/data/repositories/story_repo_imp.dart';
import 'package:what_if/features/sub_category/data/repositories/football_repo_imp.dart';
import 'package:what_if/features/sub_category/data/repositories/movie_ropo_imp.dart';
import 'package:what_if/features/sub_category/domain/use_cases/get_football_data_use_case.dart';
import '../../features/questions/data/repositories/questions_repo_imp.dart';
import '../../features/questions/domain/usecases/get_all_qustions_use_case.dart';
import '../../features/story/domain/usecases/generate_story_use_case.dart';
import '../../features/sub_category/domain/use_cases/get_movies_use_case.dart';

final getIt = GetIt.instance;
void setupServerLocator() {
  //ApiManager
  getIt.registerSingleton<ApiManager>(
    ApiManager(
      Dio(),
    ),
  );

  //GetAllQustionsUseCase
  getIt.registerSingleton<GetAllQustionsUseCase>(
    GetAllQustionsUseCase(
      questionsRepo: QuestionsRepoImp(apiManager: getIt.get<ApiManager>()),
    ),
  );
  //GenerateStoryUseCase
  getIt.registerSingleton<GenerateStoryUseCase>(
    GenerateStoryUseCase(
      StoryRepoImp(getIt.get<ApiManager>()),
    ),
  );

  //GetMoviesUseCase
  getIt.registerSingleton<GetMoviesUseCase>(
    GetMoviesUseCase(
      MovieRopoImp(getIt.get<ApiManager>()),
    ),
  );

  //GetFootballDataUseCase
  getIt.registerSingleton<GetFootballDataUseCase>(
    GetFootballDataUseCase(
      FootballRepoImp(getIt.get<ApiManager>()),
    ),
  );
}

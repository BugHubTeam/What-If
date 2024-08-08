import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../api/api_manager.dart';
import '../../features/story/data/repositories/story_repo_imp.dart';
import '../../features/questions/data/repositories/questions_repo_imp.dart';
import '../../features/questions/domain/usecases/get_all_qustions_use_case.dart';
import '../../features/story/domain/usecases/generate_story_use_case.dart';

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
}

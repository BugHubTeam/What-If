import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_if/core/utils/server_locator.dart';
import 'package:what_if/features/categories/presentation/views/categories_view.dart';
import 'package:what_if/features/home/presentation/views/home_view.dart';
import 'package:what_if/features/how_to_play/presentation/views/how_to_play_view.dart';
import 'package:what_if/features/settings/presentation/manager/settings_cubit.dart';
import 'package:what_if/features/settings/presentation/views/settings_view.dart';
import 'package:what_if/features/splash/presentation/views/splash_view.dart';
import 'package:what_if/features/story/presentation/views/story_view.dart';
import 'package:what_if/features/sub_category/domain/use_cases/get_football_data_use_case.dart';
import 'package:what_if/features/sub_category/domain/use_cases/get_movies_use_case.dart';
import 'package:what_if/features/sub_category/presentation/cubit/sub_category_cubit.dart';
import 'package:what_if/features/sub_category/presentation/views/sub_category_view.dart';
import '../../features/questions/presentation/views/questions_view.dart';
import 'route_name.dart';

class Routes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case RoutesName.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );
      case RoutesName.catagoriesView:
        return MaterialPageRoute(
          builder: (context) => const CategoriesView(),
          settings: settings,
        );
      case RoutesName.settingsView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SettingsCubit(),
            child: const SettingsView(),
          ),
          settings: settings,
        );
      case RoutesName.howToPlayView:
        return MaterialPageRoute(
          builder: (context) => const HowToPlayView(),
          settings: settings,
        );

      case RoutesName.questionsView:
        return MaterialPageRoute(
          builder: (context) => const QuestionsView(),
          settings: settings,
        );
      case RoutesName.storyView:
        return MaterialPageRoute(
          builder: (context) => const StoryView(),
          settings: settings,
        );
      case RoutesName.subCategoryView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SubCategoryCubit(
              getIt.get<GetMoviesUseCase>(),
              getIt.get<GetFootballDataUseCase>(),
            ),
            child: const SubCategoryView(),
          ),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
          settings: settings,
        );
    }
  }
}

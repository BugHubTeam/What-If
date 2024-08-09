import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_if/config/routes/route_name.dart';
import 'package:what_if/features/questions/domain/usecases/get_all_qustions_use_case.dart';
import 'package:what_if/features/questions/presentation/manager/questions_cubit.dart';
import 'package:what_if/features/story/presentation/cubit/story_cubit.dart';
import 'config/routes/routes.dart';
import 'core/utils/server_locator.dart';
import 'features/story/domain/usecases/generate_story_use_case.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setupServerLocator();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return QuestionsCubit(getIt.get<GetAllQustionsUseCase>());
        }),
        BlocProvider(
          create: (context) {
            return StoryCubit(getIt.get<GenerateStoryUseCase>());
          },
        ),
      ],
      child: MaterialApp(
        title: "What If",
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.initial,
        onGenerateRoute: Routes.onGenerate,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}

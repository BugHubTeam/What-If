import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:what_if/core/utils/components/custom_scaffold.dart';
import 'package:what_if/features/sub_category/presentation/cubit/sub_category_cubit.dart';
import '../../../../config/routes/route_name.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/constants.dart';
import '../../../questions/presentation/manager/questions_cubit.dart';
import 'widgets/sub_category_body.dart';

class SubCategoryView extends StatefulWidget {
  const SubCategoryView({super.key});

  @override
  State<SubCategoryView> createState() => _SubCategoryViewState();
}

class _SubCategoryViewState extends State<SubCategoryView> {
  @override
  void initState() {
    super.initState();
    if (categoryName == AppStrings.footBall) {
      SubCategoryCubit.get(context).getFootballData();
    } else if (categoryName == AppStrings.tv) {
      SubCategoryCubit.get(context).getMovies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: const SubCategoryBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          QuestionsCubit.get(context).getQuestions(
            name: SubCategoryCubit.subCategoryName,
            language: context.locale.toString() == 'en' ? 'english' : 'arabic',
          );
          Navigator.pushNamed(context, RoutesName.questionsView);
        },
        child: const Icon(
          Icons.task_alt,
        size: 30,
        ),
      ),
    );
  }
}

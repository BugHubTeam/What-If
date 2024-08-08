import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../manager/questions_cubit.dart';
import '../../../../core/utils/components/custom_scaffold.dart';
import 'widgets/questions_body.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    QuestionsCubit.get(context).getQuestions(
      name: 'Messi',
      language: context.locale.toString() == 'en' ? 'english' : 'arabic',
    );
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: QuestionsBody(),
    );
  }
}

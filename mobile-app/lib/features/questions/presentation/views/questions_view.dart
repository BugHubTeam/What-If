import 'package:flutter/material.dart';
import '../../../../core/utils/components/custom_scaffold.dart';
import 'widgets/questions_body.dart';

class QuestionsView extends StatelessWidget {
  const QuestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: QuestionsBody(),
    );
  }
}

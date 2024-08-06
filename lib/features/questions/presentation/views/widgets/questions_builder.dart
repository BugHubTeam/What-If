import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_if/core/utils/styles.dart';
import 'package:what_if/features/questions/presentation/manager/questions_cubit.dart';
import 'num_of_questions_widget.dart';

class QuestionsBuilder extends StatelessWidget {
  const QuestionsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var cubit = QuestionsCubit.get(context);

    return BlocBuilder<QuestionsCubit, QuestionsState>(
      builder: (context, state) {
        if (state is QuestionsFailure) {
          //handle failure here
        }
        if (state is QuestionsLoading) {
          // handle loading here
        }

        return Column(
          children: [
            NumOfQuestionsWidget(
              numberOfQuestions: cubit.numOfQuestion.toString(),
            ),
            SizedBox(height: mediaQuery.height * 0.022),
            SizedBox(
              height: mediaQuery.height * 0.3,
              child: SingleChildScrollView(
                child: Text(
                  '“${cubit.currentQuestion}”',
                  style: Styles.textStyle24.copyWith(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

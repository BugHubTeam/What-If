import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:what_if/config/routes/route_name.dart';
part 'questions_state.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit() : super(QuestionsInitial());

  static QuestionsCubit get(context) =>
      BlocProvider.of<QuestionsCubit>(context);

  String? currentQuestion;
  int currentQuestionIndex = 0;
  int numOfQuestion = 1;
  int _skipNumber = 0;

  List<String> questionList = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
    'Question 6',
    'Question 7',
    'Question 8',
    'Question 9',
    'Question 10',
  ];

  void getQuestions() {
    emit(QuestionsLoading());
    emit(QuestionsSuccess(questions: questionList));
    currentQuestion = questionList[0];
  }

  void answerTheQuestion(BuildContext context) {
    if (numOfQuestion == 5) {
      Navigator.pushNamed(context, RoutesName.storyView);
    } else if (numOfQuestion < 5) {
      currentQuestion = questionList[currentQuestionIndex + 1];
      currentQuestionIndex++;
      numOfQuestion++;

      emit(QuestionsAnswered());
    } else {
      return;
    }
  }

  void skipQuestion() {
    if (_skipNumber < 5) {
      currentQuestion = questionList[currentQuestionIndex + 1];
      currentQuestionIndex++;
      _skipNumber++;

      emit(QuestionsSkipped());
    } else {
      return;
    }
  }
}

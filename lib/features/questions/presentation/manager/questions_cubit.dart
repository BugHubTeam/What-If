import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'questions_state.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit() : super(QuestionsInitial());

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
    emit(const QuestionsLoading());
    emit(QuestionsSuccess(questions: questionList));
  }
}

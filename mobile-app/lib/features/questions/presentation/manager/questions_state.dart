part of 'questions_cubit.dart';

abstract class QuestionsState {}

class QuestionsInitial extends QuestionsState {}

class QuestionsLoading extends QuestionsState {
  QuestionsLoading();
}

class QuestionsSuccess extends QuestionsState {
  final List<String> questions;
  QuestionsSuccess({required this.questions});
}

class QuestionsFailure extends QuestionsState {
  final String errorMessage;
  QuestionsFailure({required this.errorMessage});
}

class QuestionsAnswered extends QuestionsState {}

class QuestionsSkipped extends QuestionsState {}

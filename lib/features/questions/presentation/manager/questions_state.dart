part of 'questions_cubit.dart';

abstract class QuestionsState extends Equatable {
  const QuestionsState();

  @override
  List<Object> get props => [];
}

class QuestionsInitial extends QuestionsState {}

class QuestionsLoading extends QuestionsState {
  const QuestionsLoading();
}

class QuestionsSuccess extends QuestionsState {
  final List<String> questions;
  const QuestionsSuccess({required this.questions});
}

class QuestionsFailure extends QuestionsState {
  final String errorMessage;
  const QuestionsFailure({required this.errorMessage});
}

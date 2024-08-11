import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/routes/route_name.dart';
import '../../domain/entities/question_entity.dart';
import '../../domain/usecases/get_all_qustions_use_case.dart';
import '../../../story/presentation/cubit/story_cubit.dart';
part 'questions_state.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit(this._getAllQustionsUseCase) : super(QuestionsInitial());
  final GetAllQustionsUseCase _getAllQustionsUseCase;

  static QuestionsCubit get(context) =>
      BlocProvider.of<QuestionsCubit>(context);

  String? currentQuestion;
  int currentQuestionIndex = 0;
  int numOfQuestion = 1;
  int _skipNumber = 0;

  List<String> questionList = [];
  List<QuestionEntity> questionEntityList = [];

  Future<void> getQuestions(
      {required String name, required String language}) async {
    emit(QuestionsLoading());
    var result =
        await _getAllQustionsUseCase.execute(name: name, language: language);
    result.fold(
      (failure) {
        emit(QuestionsFailure(errorMessage: failure.message));
      },
      (questions) {
        if (currentQuestion != null) {
          _clearData();
        }
        questionList = questions;
        currentQuestion = questionList[0];
        emit(QuestionsSuccess(questions: questions));
      },
    );
  }

  void answerTheQuestion(BuildContext context, String answer) {
    if (numOfQuestion == 5) {
      //generate story
      StoryCubit.get(context).generateStory(
          data: QuestionEntity.tojson(questionEntityList),
          language: context.locale.toString() == 'en' ? 'english' : 'arabic');

      //navigation to story
      Navigator.pushNamed(context, RoutesName.storyView);
    } else if (numOfQuestion < 5) {
      questionEntityList.add(
        QuestionEntity(question: currentQuestion!, answer: answer),
      );

      currentQuestion = questionList[currentQuestionIndex + 1];
      currentQuestionIndex++;
      numOfQuestion++;

      emit(QuestionsAnswered());
    } else {
      return;
    }
  }

  void skipQuestion() {
    if (_skipNumber < 2) {
      currentQuestion = questionList[currentQuestionIndex + 1];
      currentQuestionIndex++;
      _skipNumber++;

      emit(QuestionsSkipped());
    } else {
      return;
    }
  }

  _clearData() {
    _skipNumber = 0;
    currentQuestionIndex = 0;
    numOfQuestion = 1;
    questionList = [];
    questionEntityList = [];
  }
}

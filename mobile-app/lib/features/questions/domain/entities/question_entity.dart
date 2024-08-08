class QuestionEntity {
  final String question;
  final String answer;

  QuestionEntity({required this.question, required this.answer});

  static Map<String, dynamic> tojson(List<QuestionEntity> questionEntityList) {
    List<Map<String, String>> mapList = [];
    for (var element in questionEntityList) {
      mapList.add({'question': element.question, 'answer': element.answer});
    }
    return {
      'questions': mapList,
    };
  }
}

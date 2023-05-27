class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    ///listeyi alır
    final suffledList = List.of(answers);

    ///listeyi tutar
    suffledList.shuffle();

    ///listeyi karıştırır
    return suffledList;

    /// karıştırılmış halini listeler///
  }
}

class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;
  List<String> getShuffledAnswer() {
    //copy the list
    final shuffledList =
        //of create a new list based on  another list
        List.of(answers);
    //shuffled the list
    shuffledList.shuffle();
    return shuffledList;
  }
}

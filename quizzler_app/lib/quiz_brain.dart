import 'questions.dart';

class QuizBrain {

  int _questionIndex = 0;

  List<Questions> _brainQuest = [
    Questions('You can lead a cow down stairs but not up stairs.', false),
    Questions('Approximately one quarter of human bones are in the feet.', true),
    Questions('A slug\'s blood is green.', true),
    Questions('king kong gun is used mainly against dofflamingo.', false),
    Questions('the match between luffy and katakuru is allmost a draw.', true),
    Questions('nitiro is not the strongest charachter in hunter x hunter.', true),
    Questions('sanji is stronger than zoro.', false),
    Questions('ichigo at the moment of coming back from the limbo his power was beyon aizen grasp.', true),
    Questions('End of Questions....', true)
  ];

  void nextQuestion() {
    if (_brainQuest.length > _questionIndex -1) {
      _questionIndex++;
    }
  }

  String getBrainQuestions() {
    return _brainQuest[_questionIndex].questionText;
  }

  bool getBrainAnswers() {
    return _brainQuest[_questionIndex].questionAnswer;
  }

}

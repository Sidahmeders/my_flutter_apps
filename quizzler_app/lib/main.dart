import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'carconstructor.dart';

QuizBrain questions = QuizBrain();

Car normalCar = Car();
FlyingCar flycar = FlyingCar();
SuperFlyingCar superCar = SuperFlyingCar();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper = [];

  void checkUserAnswer() {
    if (questions.getBrainAnswers() == true) {
      setState(() {
        scoreKeeper.add(Icon(Icons.check ,color: Colors.greenAccent,));
      });
    } else {
      setState(() {
        scoreKeeper.add(Icon(Icons.close ,color: Colors.redAccent,));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions.getBrainQuestions(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkUserAnswer();
                questions.nextQuestion();
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkUserAnswer();
                questions.nextQuestion();
              },
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: scoreKeeper,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              print(normalCar.seat);
              print(normalCar.driving());
              print(normalCar.streering('north'));
              flycar.fly();
              print(flycar.driving());
              superCar.fly();
            },
            child: Text(
              'click to construct',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                backgroundColor: Colors.white
              ),
            ),
          ),
        ),
      ],
    );
  }
}

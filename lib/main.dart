import 'package:flutter/material.dart';

// void main()
// {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animl?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer chosen - method #2'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ...
                print('Answer 3 chosen - method #3');
              },
            ),
          ],
        ),
      ),
    );
  }
}

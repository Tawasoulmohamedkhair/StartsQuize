import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/widget/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  //use for access the list and  increase the the id of itemes
  var currentQuestionIndex = 0;
//this function to be sure the answer is stored
  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    //currentquestion  used to accessing  question list and out put the item
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //convert list of answer string to list of answer button
            //the ... because the children wants a list of widget
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                  answertext: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}

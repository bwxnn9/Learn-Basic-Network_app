import 'package:Basic_network_app/Quiz/quiz_U8/models/questions8.dart';
import 'package:Basic_network_app/Quiz/quiz_U8/screens/result_screen8.dart';
import 'package:Basic_network_app/Quiz/quiz_U8/widgets/answer_card8.dart';
import 'package:Basic_network_app/Quiz/quiz_U8/widgets/next_button8.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class QuizScreen8 extends StatefulWidget {
  const QuizScreen8({super.key});

  @override
  State<QuizScreen8> createState() => _QuizScreenState8();
}

class _QuizScreenState8 extends State<QuizScreen8> {
  int? selectedAnswerIndex8;
  int questionIndex8 = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex8 = value;
    final question = questions8[questionIndex8];
    if (selectedAnswerIndex8 == question.correctAnswerIndex8) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex8 < questions8.length - 1) {
      questionIndex8++;
      selectedAnswerIndex8 = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questions8[questionIndex8];
    bool isLastQuestion = questionIndex8 == questions8.length - 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradientLight),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question8,
              style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.options8.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex8 == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard8(
                    currentIndex: index,
                    question: question.options8[index],
                    isSelected: selectedAnswerIndex8 == index,
                    selectedAnswerIndex: selectedAnswerIndex8,
                    correctAnswerIndex: question.correctAnswerIndex8,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton8(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen8(
                            score: score,
                          ),
                        ),
                      );
                    },
                    label: 'เสร็จสิ้น',
                  )
                : RectangularButton8(
                    onPressed:
                        selectedAnswerIndex8 != null ? goToNextQuestion : null,
                    label: 'NEXT',
                  ),
          ],
        ),
      ),
    );
  }
}

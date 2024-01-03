import 'package:Basic_network_app/Quiz/quiz_U2/models/questions2.dart';
import 'package:Basic_network_app/Quiz/quiz_U2/screens/result_screen2.dart';
import 'package:Basic_network_app/Quiz/quiz_U2/widgets/answer_card2.dart';
import 'package:Basic_network_app/Quiz/quiz_U2/widgets/next_button2.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class QuizScreen2 extends StatefulWidget {
  const QuizScreen2({super.key});

  @override
  State<QuizScreen2> createState() => _QuizScreenState2();
}

class _QuizScreenState2 extends State<QuizScreen2> {
  int? selectedAnswerIndex2;
  int questionIndex2 = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex2 = value;
    final question = questions2[questionIndex2];
    if (selectedAnswerIndex2 == question.correctAnswerIndex2) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex2 < questions2.length - 1) {
      questionIndex2++;
      selectedAnswerIndex2 = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questions2[questionIndex2];
    bool isLastQuestion = questionIndex2 == questions2.length - 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradientLight),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question2,
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
              itemCount: question.options2.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex2 == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard2(
                    currentIndex: index,
                    question: question.options2[index],
                    isSelected: selectedAnswerIndex2 == index,
                    selectedAnswerIndex: selectedAnswerIndex2,
                    correctAnswerIndex: question.correctAnswerIndex2,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton2(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen(
                            score: score,
                          ),
                        ),
                      );
                    },
                    label: 'เสร็จสิ้น',
                  )
                : RectangularButton2(
                    onPressed:
                        selectedAnswerIndex2 != null ? goToNextQuestion : null,
                    label: 'NEXT',
                  ),
          ],
        ),
      ),
    );
  }
}

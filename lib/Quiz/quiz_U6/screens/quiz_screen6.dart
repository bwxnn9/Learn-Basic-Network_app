import 'package:Basic_network_app/Quiz/quiz_U6/models/questions6.dart';
import 'package:Basic_network_app/Quiz/quiz_U6/screens/result_screen6.dart';
import 'package:Basic_network_app/Quiz/quiz_U6/widgets/answer_card6.dart';
import 'package:Basic_network_app/Quiz/quiz_U6/widgets/next_button6.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class QuizScreen6 extends StatefulWidget {
  const QuizScreen6({super.key});

  @override
  State<QuizScreen6> createState() => _QuizScreenState6();
}

class _QuizScreenState6 extends State<QuizScreen6> {
  int? selectedAnswerIndex6;
  int questionIndex6 = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex6 = value;
    final question = questions6[questionIndex6];
    if (selectedAnswerIndex6 == question.correctAnswerIndex6) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex6 < questions6.length - 1) {
      questionIndex6++;
      selectedAnswerIndex6 = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questions6[questionIndex6];
    bool isLastQuestion = questionIndex6 == questions6.length - 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradientLight),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question6,
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
              itemCount: question.options6.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex6 == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard6(
                    currentIndex: index,
                    question: question.options6[index],
                    isSelected: selectedAnswerIndex6 == index,
                    selectedAnswerIndex: selectedAnswerIndex6,
                    correctAnswerIndex: question.correctAnswerIndex6,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton6(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen6(
                            score: score,
                          ),
                        ),
                      );
                    },
                    label: 'เสร็จสิ้น',
                  )
                : RectangularButton6(
                    onPressed:
                        selectedAnswerIndex6 != null ? goToNextQuestion : null,
                    label: 'NEXT',
                  ),
          ],
        ),
      ),
    );
  }
}

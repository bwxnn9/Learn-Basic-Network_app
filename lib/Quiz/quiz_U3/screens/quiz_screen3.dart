import 'package:Basic_network_app/Quiz/quiz_U3/models/questions3.dart';
import 'package:Basic_network_app/Quiz/quiz_U3/screens/result_screen3.dart';
import 'package:Basic_network_app/Quiz/quiz_U3/widgets/answer_card3.dart';
import 'package:Basic_network_app/Quiz/quiz_U3/widgets/next_button3.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class QuizScreen3 extends StatefulWidget {
  const QuizScreen3({super.key});

  @override
  State<QuizScreen3> createState() => _QuizScreenState3();
}

class _QuizScreenState3 extends State<QuizScreen3> {
  int? selectedAnswerIndex3;
  int questionIndex3 = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex3 = value;
    final question = questions3[questionIndex3];
    if (selectedAnswerIndex3 == question.correctAnswerIndex3) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex3 < questions3.length - 1) {
      questionIndex3++;
      selectedAnswerIndex3 = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questions3[questionIndex3];
    bool isLastQuestion = questionIndex3 == questions3.length - 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradientLight),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question3,
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
              itemCount: question.options3.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex3 == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard3(
                    currentIndex: index,
                    question: question.options3[index],
                    isSelected: selectedAnswerIndex3 == index,
                    selectedAnswerIndex: selectedAnswerIndex3,
                    correctAnswerIndex: question.correctAnswerIndex3,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton3(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen3(
                            score: score,
                          ),
                        ),
                      );
                    },
                    label: 'เสร็จสิ้น',
                  )
                : RectangularButton3(
                    onPressed:
                        selectedAnswerIndex3 != null ? goToNextQuestion : null,
                    label: 'NEXT',
                  ),
          ],
        ),
      ),
    );
  }
}

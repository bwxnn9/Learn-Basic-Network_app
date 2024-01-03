import 'package:Basic_network_app/Quiz/quiz_U5/models/questions5.dart';
import 'package:Basic_network_app/Quiz/quiz_U5/screens/result_screen5.dart';
import 'package:Basic_network_app/Quiz/quiz_U5/widgets/answer_card5.dart';
import 'package:Basic_network_app/Quiz/quiz_U5/widgets/next_button5.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class QuizScreen5 extends StatefulWidget {
  const QuizScreen5({super.key});

  @override
  State<QuizScreen5> createState() => _QuizScreenState5();
}

class _QuizScreenState5 extends State<QuizScreen5> {
  int? selectedAnswerIndex5;
  int questionIndex5 = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex5 = value;
    final question = questions5[questionIndex5];
    if (selectedAnswerIndex5 == question.correctAnswerIndex5) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex5 < questions5.length - 1) {
      questionIndex5++;
      selectedAnswerIndex5 = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questions5[questionIndex5];
    bool isLastQuestion = questionIndex5 == questions5.length - 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradientLight),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question5,
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
              itemCount: question.options5.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex5 == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard5(
                    currentIndex: index,
                    question: question.options5[index],
                    isSelected: selectedAnswerIndex5 == index,
                    selectedAnswerIndex: selectedAnswerIndex5,
                    correctAnswerIndex: question.correctAnswerIndex5,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton5(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen5(
                            score: score,
                          ),
                        ),
                      );
                    },
                    label: 'เสร็จสิ้น',
                  )
                : RectangularButton5(
                    onPressed:
                        selectedAnswerIndex5 != null ? goToNextQuestion : null,
                    label: 'NEXT',
                  ),
          ],
        ),
      ),
    );
  }
}

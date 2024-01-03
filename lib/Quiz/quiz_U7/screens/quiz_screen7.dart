import 'package:Basic_network_app/Quiz/quiz_U7/models/questions7.dart';
import 'package:Basic_network_app/Quiz/quiz_U7/screens/result_screen7.dart';
import 'package:Basic_network_app/Quiz/quiz_U7/widgets/answer_card7.dart';
import 'package:Basic_network_app/Quiz/quiz_U7/widgets/next_button7.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class QuizScreen7 extends StatefulWidget {
  const QuizScreen7({super.key});

  @override
  State<QuizScreen7> createState() => _QuizScreenState7();
}

class _QuizScreenState7 extends State<QuizScreen7> {
  int? selectedAnswerIndex7;
  int questionIndex7 = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex7 = value;
    final question = questions7[questionIndex7];
    if (selectedAnswerIndex7 == question.correctAnswerIndex7) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex7 < questions7.length - 1) {
      questionIndex7++;
      selectedAnswerIndex7 = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questions7[questionIndex7];
    bool isLastQuestion = questionIndex7 == questions7.length - 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradientLight),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question7,
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
              itemCount: question.options7.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex7 == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard7(
                    currentIndex: index,
                    question: question.options7[index],
                    isSelected: selectedAnswerIndex7 == index,
                    selectedAnswerIndex: selectedAnswerIndex7,
                    correctAnswerIndex: question.correctAnswerIndex7,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton7(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen7(
                            score: score,
                          ),
                        ),
                      );
                    },
                    label: 'เสร็จสิ้น',
                  )
                : RectangularButton7(
                    onPressed:
                        selectedAnswerIndex7 != null ? goToNextQuestion : null,
                    label: 'NEXT',
                  ),
          ],
        ),
      ),
    );
  }
}

import 'package:Basic_network_app/Quiz/quiz_U4/models/questions4.dart';
import 'package:Basic_network_app/Quiz/quiz_U4/screens/result_screen4.dart';
import 'package:Basic_network_app/Quiz/quiz_U4/widgets/answer_card4.dart';
import 'package:Basic_network_app/Quiz/quiz_U4/widgets/next_button4.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class QuizScreen4 extends StatefulWidget {
  const QuizScreen4({super.key});

  @override
  State<QuizScreen4> createState() => _QuizScreenState4();
}

class _QuizScreenState4 extends State<QuizScreen4> {
  int? selectedAnswerIndex4;
  int questionIndex4 = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex4 = value;
    final question = questions4[questionIndex4];
    if (selectedAnswerIndex4 == question.correctAnswerIndex4) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex4 < questions4.length - 1) {
      questionIndex4++;
      selectedAnswerIndex4 = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questions4[questionIndex4];
    bool isLastQuestion = questionIndex4 == questions4.length - 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradientLight),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question4,
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
              itemCount: question.options4.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex4 == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard4(
                    currentIndex: index,
                    question: question.options4[index],
                    isSelected: selectedAnswerIndex4 == index,
                    selectedAnswerIndex: selectedAnswerIndex4,
                    correctAnswerIndex: question.correctAnswerIndex4,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton4(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen4(
                            score: score,
                          ),
                        ),
                      );
                    },
                    label: 'เสร็จสิ้น',
                  )
                : RectangularButton4(
                    onPressed:
                        selectedAnswerIndex4 != null ? goToNextQuestion : null,
                    label: 'NEXT',
                  ),
          ],
        ),
      ),
    );
  }
}

import 'package:final_project/quiz/writing_model.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    this.questionText,
    this.answers,
    this.correctAnswer,
    required this.viewModel,
  }) : super(key: key);

  final String? questionText;
  final List? answers;
  final String? correctAnswer;
  final WritingViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    String? radioGroupValue;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(255, 179, 0, 1),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(25)),
            ),
            padding: const EdgeInsets.all(12),
            child: Text(
              questionText!,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
            return Column(
              children: [
                for (int i = 0; i < answers!.length; i++)
                  RadioListTile(
                    value: answers![i],
                    activeColor: Theme.of(context).colorScheme.secondary,
                    title: Text(
                      answers![i],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    groupValue: radioGroupValue,
                    onChanged: (value) {
                      if (radioGroupValue == null) {
                        if (value == correctAnswer) {
                          viewModel.score += 1;
                        }
                      } else {
                        if (radioGroupValue == correctAnswer &&
                            value != correctAnswer) {
                          viewModel.score -= 1;
                        } else if (radioGroupValue != correctAnswer &&
                            value == correctAnswer) {
                          viewModel.score += 1;
                        }
                      }

                      setState(() {
                        radioGroupValue = value;
                      });
                    },
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

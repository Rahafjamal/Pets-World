import 'package:final_project/CatModels/AppBarOne.dart';
import 'package:final_project/Screens/Drawer_screen.dart';
import 'package:final_project/quiz/question_widget.dart';
import 'package:final_project/quiz/writing_model.dart';
import 'package:flutter/material.dart';

class WritingView extends StatefulWidget {
  const WritingView({super.key});

  @override
  State<WritingView> createState() => _WritingViewState();
}

class _WritingViewState extends State<WritingView> {
  final WritingViewModel _viewModel = WritingViewModel();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const CatAppBar(),
        drawer: Drawer_screen(),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: ListView(
            children: [
              SizedBox(height: 0),
              const Text(
                "Should you get a pet ?",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              Image.asset(
                "images/quiz.jfif",
                height: 190.0,
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _viewModel.questions.length,
                itemBuilder: (BuildContext context, int index) {
                  List answers = _viewModel.questions[index]['answers'];
                  return QuestionWidget(
                    viewModel: _viewModel,
                    questionText:
                        '${index + 1}. ${_viewModel.questions[index]['question']}',
                    answers: answers,
                    correctAnswer: _viewModel.questions[index]['correctAnswer'],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "OK",
                                    style: TextStyle(fontSize: 24),
                                  ))
                            ],
                            // title: Text(FirebaseAuth.instance.currentUser!.displayName!),
                            content: SingleChildScrollView(
                              child: Column(
                                children: [
                                  const Text("Your score is"),
                                  Text("${_viewModel.score}/10"),
                                ],
                              ),
                            ),
                          );
                        }));
                  },
                  child: const Text('Finish Quiz'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

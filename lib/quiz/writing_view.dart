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
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: const CatAppBar(),
          drawer: Drawer_screen(),
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  width: width,
                  height: height,
                  child: Stack(fit: StackFit.loose, children: [
                    Container(
                      width: width,
                      height: height,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Color.fromARGB(255, 156, 182, 255),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        left: width / 10,
                        top: height / 45,
                        height: 2 * height / 45,
                        width: width - (width / 5),
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: Text(
                              'Should you get a pet ?',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Comfortaa-VariableFont_wght',
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                      left: width / 10,
                      height: height / 7,
                      width: width - (width / 5),
                      top: 4 * height / 45,
                      child: Card(
                        shadowColor: Colors.blue[900],
                        elevation: 8,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 129, 162, 255),
                                Color.fromARGB(255, 129, 162, 255),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        left: width * 0.11111,
                        width: width - (width / 4.5),
                        top: 4 * height / 45,
                        child: Image(image: AssetImage('images/quiz.png'))),
                    Positioned(
                      left: width / 10,
                      width: width - (width / 5),
                      top: 7 * height / 45 + (height / 7),
                      height: height / 1.5,
                      child: Container(
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _viewModel.questions.length,
                          itemBuilder: (BuildContext context, int index) {
                            List answers =
                                _viewModel.questions[index]['answers'];
                            return QuestionWidget(
                              viewModel: _viewModel,
                              questionText:
                                  '${index + 1}. ${_viewModel.questions[index]['question']}',
                              answers: answers,
                              correctAnswer: _viewModel.questions[index]
                                  ['correctAnswer'],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider();
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
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
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily:
                                                'Comfortaa-VariableFont_wght',
                                            letterSpacing: 1,
                                          ),
                                          "OK",
                                        ))
                                  ],
                                  // title: Text(FirebaseAuth.instance.currentUser!.displayName!),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Your score is",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily:
                                                'Comfortaa-VariableFont_wght',
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        Text("${_viewModel.score}/10"),
                                      ],
                                    ),
                                  ),
                                );
                              }));
                        },
                        child: const Text(
                          'Finish Quiz',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Comfortaa-VariableFont_wght',
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ]),
                )
              ]))),
    );
  }
}

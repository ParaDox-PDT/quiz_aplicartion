import 'package:flutter/material.dart';
import 'package:n8_default_project/models/question_model.dart';
import 'package:n8_default_project/models/subject_model.dart';
import 'package:n8_default_project/ui/quiz/widgets/answer_item.dart';
import 'package:n8_default_project/ui/quiz/widgets/bottom_buttons_view.dart';
import 'package:n8_default_project/ui/quiz/widgets/quiz_appbar.dart';
import 'package:n8_default_project/ui/quiz/widgets/quiz_screen_top.dart';
import 'package:n8_default_project/ui/quiz_result/quiz_result.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/utility_functions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    Key? key,
    required this.subject,
  }) : super(key: key);

  final SubjectModel subject;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuestionModel> subjectQuestions = [];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = 0;

  Map<int, int> answersMap = {};
  List<bool> result = [];

  @override
  void initState() {
    subjectQuestions = widget.subject.questions;

    for (int i = 0; i < subjectQuestions.length; i++) {
      answersMap[i] = 0;
    }

    print("Answers Initial Set:$answersMap");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: QuizAppBar(
        onSubmitTap: () {
          answersMap.forEach((key, value) {
            if (value == 1) {
              if (widget.subject.questions[key].trueAnswer ==
                  widget.subject.questions[key].answer1) {
                result.add(true);
              } else {
                result.add(false);
              }
            }
            else if (value == 2) {
              if (widget.subject.questions[key].trueAnswer ==
                  widget.subject.questions[key].answer2) {
                result.add(true);
              } else {
                result.add(false);
              }
            }
            else if (value == 3) {
              if (widget.subject.questions[key].trueAnswer ==
                  widget.subject.questions[key].answer3) {
                result.add(true);
              } else {
                result.add(false);
              }
            }
            else if (value == 4) {
              if (widget.subject.questions[key].trueAnswer ==
                  widget.subject.questions[key].answer4) {
                result.add(true);
              } else {
                result.add(false);
              }
            }
            else if (value == 0){
              result.add(false);
            }
          });
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return QuizResult(result: result,);
          }));
        },
        onTap: () {
          Navigator.pop(context);
        },
        title: "${widget.subject.subjectName} quiz info",
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          QuizScreenTop(
            rate: 0.67,
            subjectName: widget.subject.subjectName,
            height: height,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: AppColors.C_162023,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(28),
                      children: [
                        getRichTextForCount("Q.${currentQuestionIndex + 1}/",
                            "${subjectQuestions.length}", context),
                        const SizedBox(height: 12),
                        Text(
                          subjectQuestions[currentQuestionIndex].questionText,
                          style: Theme
                              .of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 15),
                        ),
                        AnswerItem(
                          isSelected: selectedAnswerIndex == 1,
                          variantName: "A.",
                          answerText:
                          subjectQuestions[currentQuestionIndex].answer1,
                          onTap: () {
                            setState(() {
                              selectedAnswerIndex = 1;
                            });
                            answersMap[currentQuestionIndex] =
                                selectedAnswerIndex;
                          },
                        ),
                        AnswerItem(
                          isSelected: selectedAnswerIndex == 2,
                          variantName: "B.",
                          answerText:
                          subjectQuestions[currentQuestionIndex].answer2,
                          onTap: () {
                            setState(() {
                              selectedAnswerIndex = 2;
                            });
                            answersMap[currentQuestionIndex] =
                                selectedAnswerIndex;
                          },
                        ),
                        AnswerItem(
                          isSelected: selectedAnswerIndex == 3,
                          variantName: "C.",
                          answerText:
                          subjectQuestions[currentQuestionIndex].answer3,
                          onTap: () {
                            setState(() {
                              selectedAnswerIndex = 3;
                            });
                            answersMap[currentQuestionIndex] =
                                selectedAnswerIndex;
                          },
                        ),
                        AnswerItem(
                          isSelected: selectedAnswerIndex == 4,
                          variantName: "D.",
                          answerText:
                          subjectQuestions[currentQuestionIndex].answer4,
                          onTap: () {
                            setState(() {
                              selectedAnswerIndex = 4;
                            });
                            answersMap[currentQuestionIndex] =
                                selectedAnswerIndex;
                          },
                        ),
                      ],
                    ),
                  ),
                  BottomButtonViews(
                    onNextTapVisibility:
                    !(currentQuestionIndex == subjectQuestions.length - 1),
                    onPreviousTapVisibility: !(currentQuestionIndex == 0),
                    onNextTap: () {
                      if (currentQuestionIndex < subjectQuestions.length - 1) {
                        currentQuestionIndex++;
                        selectedAnswerIndex = answersMap[currentQuestionIndex]!;
                        setState(() {});
                      }
                      // else {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //       const SnackBar(content: Text("Savollar tamom")));
                      // }
                    },
                    onPreviousTap: () {
                      if (currentQuestionIndex > 0) {
                        currentQuestionIndex--;
                        selectedAnswerIndex = answersMap[currentQuestionIndex]!;
                        setState(() {});
                      }
                      // else {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //       const SnackBar(content: Text("Bu 1- savol")));
                      // }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

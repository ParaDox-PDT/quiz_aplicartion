import 'package:flutter/material.dart';
import 'package:n8_default_project/ui/quiz_result/widgest/result_bottom_view.dart';
import 'package:n8_default_project/ui/quiz_result/widgest/result_count_view.dart';
import 'package:n8_default_project/ui/quiz_result/widgest/result_time_view.dart';
import 'package:n8_default_project/ui/quiz_result/widgest/result_top_view.dart';
import 'package:n8_default_project/ui/quiz_result/widgest/retry_button.dart';
import 'package:n8_default_project/ui/quiz_result/widgest/test_result_view.dart';
import 'package:n8_default_project/ui/widgets/global_button.dart';
import 'package:n8_default_project/utils/colors.dart';

import '../widgets/global_appbar.dart';

class QuizResult extends StatefulWidget {
  const QuizResult({Key? key}) : super(key: key);

  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        onTap: () {
          Navigator.pop(context);
        },
        title: "Quiz Result",
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(30),
              children: [
                const ResultTopView(
                  title: "Pair of Linear Equation in Two Variables ",
                  subTitle: "Maths / Real Numbers",
                ),
                const SizedBox(height: 19),
                const TestResultView(
                  totalQuestionCount: 12,
                  trueAnswersCount: 8,
                ),
                const SizedBox(height: 19),
                const ResultCountView(
                  countFalse: 4,
                  countTrue: 5,
                ),
                const SizedBox(height: 19),
                const ResultTimeView(
                  totalQuestionsCount: 12,
                  totalTime: 600,
                ),
                const SizedBox(height: 19),
                GlobalButton(
                  title: "Check Answers",
                  onTap: () {},
                  color: AppColors.C_0E81B4.withOpacity(0.5),
                  withBorder: true,
                ),
                const SizedBox(height: 16),
                RetryButton(onTap: () {}),
              ],
            ),
          ),
          ResultBottomView(onTap: () {})
        ],
      ),
    );
  }
}

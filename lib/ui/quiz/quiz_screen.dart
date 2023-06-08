import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n8_default_project/models/subject_model.dart';
import 'package:n8_default_project/ui/quiz/widgets/answer_item.dart';
import 'package:n8_default_project/ui/quiz/widgets/bottom_buttons_view.dart';
import 'package:n8_default_project/ui/quiz/widgets/my_progress_indicator.dart';
import 'package:n8_default_project/ui/quiz/widgets/quiz_appbar.dart';
import 'package:n8_default_project/ui/quiz_result/quiz_result.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/utility_functions.dart';

import '../../utils/icons.dart';

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
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: QuizAppBar(
        onSubmitTap: () {},
        onTap: () {
          Navigator.pop(context);
        },
        title: "${widget.subject.subjectName} quiz info",
      ),
      body: Column(
        children: [
          const SizedBox(height: 12),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: height * 0.125,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chapter text",
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Text(
                      "${widget.subject.subjectName} chapter",
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.textColor.withOpacity(0.5)),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppImages.clock,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "07:28",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: AppColors.textColor),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
                MyProgressIndicator(rate: 0.67),
              ],
            ),
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
                        getRichTextForCount("Q.3/", "5", context),
                        const SizedBox(height: 12),
                        Text(
                          "Question Graphically, the pair of equations 7x – y = 5; 21x – 3y = 10 represents two lines which are",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 15),
                        ),
                        AnswerItem(
                          isSelected: true,
                          variantName: "A",
                          answerText:
                              "Question Graphically, the pair of equations 7x – y = 5; 21x – 3y = 10 represents t",
                          onTap: () {},
                        ),
                        AnswerItem(
                          isSelected: false,
                          variantName: "A",
                          answerText:
                              "Question Graphically, the pair of equations 7x – y = 5; 21x – 3y = 10 represents t",
                          onTap: () {},
                        ),
                        AnswerItem(
                          isSelected: false,
                          variantName: "A",
                          answerText:
                              "Question Graphically, the pair of equations 7x – y = 5; 21x – 3y = 10 represents t",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  BottomButtonViews(
                    onNextTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return QuizResult();
                      }));
                    },
                    onPreviousTap: () {},
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

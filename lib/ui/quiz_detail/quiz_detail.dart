import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n8_default_project/ui/quiz_detail/widgets/time_container.dart';
import 'package:n8_default_project/ui/widgets/global_appbar.dart';
import 'package:n8_default_project/ui/widgets/global_button.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/icons.dart';

class QuizDetailScreen extends StatefulWidget {
  const QuizDetailScreen({Key? key}) : super(key: key);

  @override
  State<QuizDetailScreen> createState() => _QuizDetailScreenState();
}

class _QuizDetailScreenState extends State<QuizDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBar(
        onTap: () {
          Navigator.pop(context);
        },
        title: "Math quiz info",
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: Stack(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: AppColors.C_162023,
                ),
                child: ListView(
                  padding: const EdgeInsets.all(32),
                  children: [
                    Text('''
                    The quizzes consists of questions carefully designed to help you self-assess your comprehension of the information presented on the topics covered in the module. 
After responding to a question, click on the "Next Question" button at the bottom to go to the next questino. After responding to the 8th question, click on "Close" on the top of the window to exit the quiz.
If you select an incorrect response for a question, you can try again until you get the correct response. If you retake the quiz, the questions and their respective responses will be randomized.
                    ''')
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.C_273032,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeContainer(timeText: "15:00"),
                    const SizedBox(width: 32),
                    Expanded(
                      child: GlobalButton(
                        title: "Start Quiz",
                        onTap: () {},
                        color: AppColors.C_0E81B4,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

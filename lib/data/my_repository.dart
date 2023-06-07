import 'package:n8_default_project/models/question_model.dart';
import 'package:n8_default_project/models/quiz_level.dart';
import 'package:n8_default_project/models/subject_model.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/icons.dart';

class MyRepository {
  static List<SubjectModel> quizData = [
    SubjectModel(
      subjectImage: AppImages.math,
      subjectName: "Mathematics",
      quizTime: 600,
      level: QuizLevel.easy,
      description: '''The quizzes consists of questions carefully designed to help you self-assess your comprehension of the information presented on the topics covered in the module. 
After responding to a question, click on the "Next Question" button at the bottom to go to the next questino. After responding to the 8th question, click on "Close" on the top of the window to exit the quiz.
If you select an incorrect response for a question, you can try again until you get the correct response. If you retake the quiz, the questions and their respective responses will be randomized.
      ''',
      subjectColor: AppColors.C_F2954D,
      questions: [
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
      ],
    ),
    SubjectModel(
      subjectImage: AppImages.english,
      description: "Yaxshi test",
      subjectColor: AppColors.C_0E81B4,
      level: QuizLevel.easy,
      questions: [
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
      ],
      subjectName: "English",
      quizTime: 600,
    ),
    SubjectModel(
      subjectImage: AppImages.flutter,
      description: "Yaxshi test",
      subjectColor: AppColors.C_162023,
      level: QuizLevel.easy,
      questions: [
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
        QuestionModel(
          trueAnswer: "25",
          questionText: "Besh karra besh necha?",
          answer1: "1",
          answer2: "16",
          answer3: "20",
          answer4: "25",
        ),
      ],
      subjectName: "Flutter",
      quizTime: 600,
    ),
  ];
}

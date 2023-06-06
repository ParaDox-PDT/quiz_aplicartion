import 'package:n8_default_project/models/question_model.dart';
import 'package:n8_default_project/models/quiz_level.dart';
import 'package:n8_default_project/models/subject_model.dart';
import 'package:n8_default_project/utils/colors.dart';

class MyRepository {
  static List<SubjectModel> quizData = [
    SubjectModel(
      subjectName: "Mathematics",
      quizTime: 600,
      level: QuizLevel.easy,
      description: "Yaxshi test",
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
    )
  ];
}

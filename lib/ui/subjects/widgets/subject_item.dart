import 'package:flutter/material.dart';
import 'package:n8_default_project/utils/colors.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem(
      {Key? key,
      required this.color,
      required this.subjectTitle,
      required this.level,
      required this.time,
      required this.onTap,
      required this.questionsCount})
      : super(key: key);

  final Color color;
  final String subjectTitle;
  final String level;
  final String time;
  final String questionsCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Ink(
        height: MediaQuery.of(context).size.height / 7,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.C_162023.withOpacity(0.3),
                spreadRadius: 12,
                blurRadius: 10,
              )
            ]),
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subjectTitle,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      time,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      level,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      questionsCount,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

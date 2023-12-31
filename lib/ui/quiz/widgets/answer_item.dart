import 'package:flutter/material.dart';
import 'package:n8_default_project/utils/colors.dart';

class AnswerItem extends StatelessWidget {
  const AnswerItem({
    Key? key,
    required this.variantName,
    required this.answerText,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  final String variantName;
  final String answerText;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.C_0E81B4 : AppColors.C_273032,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        title: Row(
          children: [
            Text(
              variantName,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                answerText,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

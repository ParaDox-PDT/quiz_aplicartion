import 'package:flutter/material.dart';

Widget getRichText(String text1, String text2, BuildContext context) {
  return RichText(
    text: TextSpan(
      text: text1,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(fontWeight: FontWeight.w400),
      children: <TextSpan>[
        TextSpan(
          text: text2,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}

Widget getRichTextForCount(String text1, String text2, BuildContext context) {
  return RichText(
    text: TextSpan(
      text: text1,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(fontWeight: FontWeight.w700, fontSize: 20),
      children: <TextSpan>[
        TextSpan(
          text: text2,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}

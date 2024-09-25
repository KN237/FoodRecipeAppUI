import 'package:flutter/material.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/spacer.dart';

class DecoratedTitle extends StatelessWidget {
  const DecoratedTitle({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 30,
          height: 1,
          color: Colors.grey.withOpacity(0.4),
        ),
        addHorizontalSpace(5),
        Text(
          text,
          style: bodySmallRegular.copyWith(
              color: Colors.grey.withOpacity(0.5), fontWeight: FontWeight.w700),
        ),
        addHorizontalSpace(5),
        Container(
          width: 30,
          height: 1,
          color: Colors.grey.withOpacity(0.4),
        ),
      ],
    );
  }
}

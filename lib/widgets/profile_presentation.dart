import 'package:flutter/material.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/spacer.dart';

class ProfilePresentation extends StatelessWidget {
  const ProfilePresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/images/chef.png'),
        ),
        Column(
          children: [
            Text(
              'Recipe',
              style: bodySmallRegular,
            ),
            addVerticalSpace(05),
            Text(
              '4',
              style: bodyLargeBold,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Followers',
              style: bodySmallRegular,
            ),
            addVerticalSpace(05),
            Text(
              '2.5M',
              style: bodyLargeBold,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Following',
              style: bodySmallRegular,
            ),
            addVerticalSpace(05),
            Text(
              '259',
              style: bodyLargeBold,
            ),
          ],
        ),
      ],
    );
  }
}

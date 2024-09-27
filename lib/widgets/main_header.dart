import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Jega',
                style: titleSmallBold,
              ),
              Text(
                'What are you cooking today?',
                style: bodySmallRegular,
              )
            ],
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Constants.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/images/person.png',
              width: 20,
            ),
          )
        ],
      ),
    );
  }
}

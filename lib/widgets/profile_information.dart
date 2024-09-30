import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Afuwape Abiodun',
            style: bodyLargeBold,
          ),
          Text(
            'Chef',
            style: bodySmallRegular,
          ),
          Text.rich(
            const TextSpan(
              text: 'Private Chef\nPassionate about food and life 🥘🍲🍝🍱',
              children: [
                TextSpan(
                  text: '\nMore...',
                  style: TextStyle(color: Constants.primaryColor),
                ),
              ],
            ),
            style: bodySmallRegular,
          ),
        ],
      ),
    );
  }
}

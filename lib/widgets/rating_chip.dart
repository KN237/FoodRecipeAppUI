import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/spacer.dart';

class RatingChip extends StatelessWidget {
  const RatingChip({
    super.key,
    required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 20,
      decoration: BoxDecoration(
        color: Constants.secondaryColor20,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Constants.secondaryColor,
            size: 10,
          ),
          addHorizontalSpace(4),
          Text(
            rating.toString(),
            style: labelLargeBold.copyWith(fontSize: 8),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';

class CustomFilterChip extends StatelessWidget {
  const CustomFilterChip({
    super.key,
    required this.text,
    this.isSelected = false,
  });
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: isSelected ? Constants.primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Constants.primaryColor),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isSelected ? Colors.white : Constants.primaryColor),
      ),
    );
  }
}

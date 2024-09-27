import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';

class BookmarkButton extends StatelessWidget {
  const BookmarkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const CircleAvatar(
        backgroundColor: Colors.white,
        radius: 18,
        child: Icon(
          Icons.bookmark_outline,
          color: Constants.primaryColor,
          size: 20,
        ),
      ),
    );
  }
}

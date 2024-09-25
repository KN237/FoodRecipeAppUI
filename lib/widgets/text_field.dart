import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textController,
    required this.text,
    required this.hintText,
    this.isObscure,
  });

  final TextEditingController textController;
  final String text;
  final String hintText;
  final bool? isObscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 7),
          child: Text(
            text,
            style: bodyLargeBold,
          ),
        ),
        TextFormField(
          controller: textController,
          obscureText: isObscure ?? false,
          cursorColor: Constants.primaryColor,
          validator: (value) {
            if (value == null) {
              return 'This field must be filled';
            }
            return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.8),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.8),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.8),
              ),
            ),
            hintText: hintText,
            hintStyle: bodyMediumRegular.copyWith(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}

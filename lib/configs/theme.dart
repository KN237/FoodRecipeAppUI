import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final customTheme = ThemeData.light().copyWith(
  textTheme: GoogleFonts.poppinsTextTheme()
    ..titleLarge!.copyWith(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    )
    ..titleMedium!.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    )
    ..titleSmall!.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
);

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/configs/constants.dart';

final customTheme = ThemeData.light().copyWith(
  textTheme: GoogleFonts.poppinsTextTheme(),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  tabBarTheme: const TabBarTheme(
    indicatorColor: Colors.transparent,
    labelStyle: TextStyle(color: Colors.white),
    unselectedLabelStyle: TextStyle(color: Constants.primaryColor),
    dividerHeight: 0,
    tabAlignment: TabAlignment.start,
  ),
);

final titleLargeBold = customTheme.textTheme.titleLarge!
    .copyWith(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold);

final titleLargeRegular = customTheme.textTheme.titleLarge!
    .copyWith(fontSize: 30, color: Colors.black);

final titleMediumBold = customTheme.textTheme.titleMedium!
    .copyWith(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);

final titleMediumRegular = customTheme.textTheme.titleMedium!
    .copyWith(fontSize: 20, color: Colors.black);

final titleSmallBold = customTheme.textTheme.titleSmall!
    .copyWith(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

final titleSmallRegular = customTheme.textTheme.titleSmall!
    .copyWith(fontSize: 18, color: Colors.black);

final bodyLargeBold = customTheme.textTheme.bodyLarge!
    .copyWith(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);

final bodyLargeRegular = customTheme.textTheme.bodyLarge!
    .copyWith(fontSize: 16, color: Colors.black);

final bodyMediumBold = customTheme.textTheme.bodyMedium!
    .copyWith(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold);

final bodyMediumRegular = customTheme.textTheme.bodyMedium!
    .copyWith(fontSize: 14, color: Colors.black);

final bodySmallBold = customTheme.textTheme.bodySmall!
    .copyWith(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold);

final bodySmallRegular = customTheme.textTheme.bodySmall!
    .copyWith(fontSize: 12, color: Colors.black);

final labelLargeBold = customTheme.textTheme.labelLarge!
    .copyWith(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold);

final labelLargeRegular = customTheme.textTheme.labelLarge!
    .copyWith(fontSize: 11, color: Colors.black);

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/screens/main/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: customTheme,
      home: const HomePage(),
    ),
  );
}

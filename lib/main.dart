import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/screens/auth/login.dart';
import 'package:recipe_app/screens/auth/register.dart';
import 'package:recipe_app/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      theme: customTheme,
      home: const Login(),
    ),
  );
}

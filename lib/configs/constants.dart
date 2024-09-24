import 'package:flutter/material.dart';

class Constants {
  static var primaryColor = MaterialColor(0XFF129575, {
    100: const Color(0XFF129575).withOpacity(1),
    80: const Color(0XFF129575).withOpacity(0.8),
    60: const Color(0XFF129575).withOpacity(0.6),
    40: const Color(0XFF129575).withOpacity(0.4),
    20: const Color(0XFF129575).withOpacity(0.2),
  });

  static var secondaryColor = MaterialColor(0XFFff9c00, {
    100: const Color(0XFFff9c00).withOpacity(1),
    80: const Color(0XFFff9c00).withOpacity(0.8),
    60: const Color(0XFFff9c00).withOpacity(0.6),
    40: const Color(0XFFff9c00).withOpacity(0.4),
    20: const Color(0XFFff9c00).withOpacity(0.2),
  });

  static var successColor = const Color(0XFF31b057);
  static var successColorLight = const Color(0XFF31b057);
  static var pinkColor = const Color(0XFFfd3654);
  static var pinkColorLight = const Color(0XFFffe1e7);
}

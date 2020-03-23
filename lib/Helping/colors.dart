import 'package:flutter/material.dart';

class CustomColor {
  static Map<int, Color> color = {
    50: Color.fromRGBO(41, 68, 89, .1),
    100: Color.fromRGBO(41, 68, 89, .2),
    200: Color.fromRGBO(41, 68, 89, .3),
    300: Color.fromRGBO(41, 68, 89, .4),
    400: Color.fromRGBO(41, 68, 89, .5),
    500: Color.fromRGBO(41, 68, 89, .6),
    600: Color.fromRGBO(41, 68, 89, .7),
    700: Color.fromRGBO(41, 68, 89, .8),
    800: Color.fromRGBO(41, 68, 89, .9),
    900: Color.fromRGBO(41, 68, 89, 1),
  };

  static final materialPrimaryColor = MaterialColor(0xFF294459, color);

  static final primarycolor = Color.fromRGBO(41, 68, 89, 1);
  static final primarycolor90 = Color.fromRGBO(41, 68, 89, .9);
  static final primarycolor70 = Color.fromRGBO(41, 68, 89, .7);
  static final primarycolor50 = Color.fromRGBO(41, 68, 89, .5);
}

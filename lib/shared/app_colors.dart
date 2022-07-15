import 'package:flutter/material.dart';

class AppColors {

static const textColor = Color(0xFF27214D);
static const borderColor = Color(0xFF333333);
static const activeColor = Color(0xFFFFF2E7);
static const inputColor = Color(0xFFF3F1F1);

static const MaterialColor primaryColor =
MaterialColor(_primaryValue, <int, Color>{
  50: Color(0xFFFFF4EA),
  100: Color(0xFFFFE4CB),
  200: Color(0xFFFFD2A8),
  300: Color(0xFFFFBF85),
  400: Color(0xFFFFB26B),
  500: Color(_primaryValue),
  600: Color(0xFFFF9C4A),
  700: Color(0xFFFF9240),
  800: Color(0xFFFF8937),
  900: Color(0xFFFF7827),
});
static const int _primaryValue = 0xFFFFA451;

}

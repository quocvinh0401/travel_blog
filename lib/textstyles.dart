import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static final TextStyle headingText = TextStyle(
      fontSize: 22, color: Colors.white.withOpacity(0.8), letterSpacing: 3);
  static final TextStyle titleText = TextStyle(
      fontSize: 36,
      color: Colors.white.withOpacity(0.6),
      letterSpacing: 4,
      fontWeight: FontWeight.bold);
  static final TextStyle subTitleText = TextStyle(
      fontSize: 18, color: Colors.white.withOpacity(0.7), height: 1.5);
  static final TextStyle rotateText = TextStyle(
      fontSize: 60,
      fontFamily: 'LondrinaOutline',
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w600,
      letterSpacing: 3);
  static final TextStyle headingText2 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.3);
  static final TextStyle titleStory =
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800);
}

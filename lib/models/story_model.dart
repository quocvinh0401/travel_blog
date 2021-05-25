import 'package:flutter/material.dart';

class Story {
  const Story(
      {@required this.image, @required this.title, @required this.author});

  final String image;
  final String title;
  final String author;
}
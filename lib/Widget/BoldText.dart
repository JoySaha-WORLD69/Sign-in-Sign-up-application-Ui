import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Boldtx extends StatelessWidget {
  Boldtx({
    super.key,
    required this.text,
    this.size = 20,
    this.textOverflow = TextOverflow.ellipsis,
    this.fontWeight,
    this.color,
  });

  String text;
  Color? color;
  TextOverflow textOverflow;
  double size;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

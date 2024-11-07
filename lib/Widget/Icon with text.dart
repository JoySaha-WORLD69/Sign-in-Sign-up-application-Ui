import 'package:flutter/material.dart';
import 'package:siginapp/BoldText.dart';

// ignore: must_be_immutable
class Iconwithtext extends StatelessWidget {
  Iconwithtext({
    super.key,
    required this.icon,
    required this.Text,
    this.sizeicon = 14,
    this.sizetext = 14,
  });

  String Text;
  final icon;
  Color? colortext;
  Color? coloricon;
  double sizetext;
  double sizeicon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: sizeicon,
        ),
        SizedBox(
          width: 6,
        ),
        Opacity(
          opacity: 0.5,
          child: Boldtx(
            text: Text,
            size: sizetext,
          ),
        )
      ],
    );
  }
}

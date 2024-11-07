import 'package:flutter/material.dart';

// ignore: must_be_immutable
class lookpkcontainer extends StatelessWidget {
  lookpkcontainer({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 310,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(20)),
    );
  }
}

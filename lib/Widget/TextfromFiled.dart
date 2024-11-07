import 'package:flutter/material.dart';
import 'package:siginapp/Icon%20with%20text.dart';

// ignore: must_be_immutable
class Textfromanything extends StatelessWidget {
  Textfromanything(
      {super.key,
      required this.icoN,
      required this.texT,
      required this.obsecure});

  final icoN;
  String texT;
  final bool obsecure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: TextFormField(
        obscureText: obsecure,
        decoration: InputDecoration(
            label: Iconwithtext(
              icon: icoN,
              sizeicon: 22,
              Text: texT,
              sizetext: 17,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))),
      ),
    );
  }
}

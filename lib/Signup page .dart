import 'package:flutter/material.dart';
import 'package:siginapp/BoldText.dart';
import 'package:siginapp/Login%20page.dart';
import 'package:siginapp/TextfromFiled.dart';
import 'package:siginapp/contanter.dart';

// ignore: must_be_immutable
class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool tracker = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/shape7.png"),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              children: [
                Text(
                  "Welcome Create new account !",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      fontFamily: "font330"),
                ),
                Textfromanything(
                  icoN: Icons.person,
                  texT: "Username",
                  obsecure: false,
                ),
                Textfromanything(
                  icoN: Icons.password_outlined,
                  texT: "password",
                  obsecure: true,
                ),
                Textfromanything(
                  icoN: Icons.email_outlined,
                  texT: "Email",
                  obsecure: false,
                ),
                Textfromanything(
                  icoN: Icons.call,
                  texT: "Phone",
                  obsecure: false,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 7,
          ),

          lookpkcontainer(text: "Sign up"),

          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Boldtx(
                text: "Alrady have an account?",
                size: 14,
                fontWeight: FontWeight.w500,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Boldtx(
                  text: " Login ",
                  size: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          //////////////////////////////////////////
        ],
      ),
    );
  }
}

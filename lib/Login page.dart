import 'package:flutter/material.dart';
import 'package:siginapp/BoldText.dart';
import 'package:siginapp/Signup%20page%20.dart';
import 'package:siginapp/TextfromFiled.dart';
import 'package:siginapp/contanter.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool tracker = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset("assets/shape7.png"),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome !",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "font330"),
                  ),
                  Textfromanything(
                    icoN: Icons.email_outlined,
                    texT: "Email",
                    obsecure: false,
                  ),
                  Textfromanything(
                    icoN: Icons.password_outlined,
                    texT: "password",
                    obsecure: true,
                  ),
                ],
              ),
            ),

            Transform.translate(
              offset: Offset(-11, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: tracker,
                        onChanged: (e) {
                          setState(() {
                            tracker = !tracker;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Boldtx(
                    text: "Remember me",
                    size: 15,
                    fontWeight: FontWeight.bold,
                    color: tracker ? Colors.orange : Colors.black,
                  )
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            lookpkcontainer(text: "Login"),

            SizedBox(
              height: 14,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Boldtx(
                  text: "Don't have an account?  ",
                  size: 14,
                  fontWeight: FontWeight.w500,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Boldtx(
                    text: " Sign up ",
                    size: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset("assets/shape6.png")
            //////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}

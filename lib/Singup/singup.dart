import 'package:flutter/material.dart';
import 'package:project6/Singup/SignUpForm.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: Container(
                height: screenSize.height * 0.6,
                width: screenSize.width,
                color: Colors.blueAccent.withOpacity(0.7),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: screenSize.width * 0.08,
                    color: const Color(0xff7baaff),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                SizedBox(
                  width: screenSize.width * 0.8,
                  child: const SignUpForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

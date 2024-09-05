import 'package:flutter/material.dart';
import 'package:proj/Login/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
          // المحتوى فوق الخلفية المنحنية
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: screenSize.width * 0.1,
                    color: Color(0xff7baaff),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                SizedBox(
                  width: screenSize.width * 0.8,
                  child: const LoginForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

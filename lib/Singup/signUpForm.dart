import 'package:flutter/material.dart';
import 'package:project6/Login/text_feld_user.dart';
import 'package:project6/Login/text_feld_pass.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

    return Container(
      width: 337,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffE29578),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Username',
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
          const SizedBox(height: 8),
          CustomTextFieldUsername(
            hintText: 'Enter your username',
            controller: usernameController,
          ),
          const SizedBox(height: 16),
          const Text(
            'Email',
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
          const SizedBox(height: 8),
          CustomTextFieldUsername(
            hintText: 'Enter your email',
            controller: emailController,
          ),
          const SizedBox(height: 16),
          const Text(
            'Password',
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
          const SizedBox(height: 8),
          CustomTextFieldPassword(
            hintText: 'Enter your password',
            controller: passwordController,
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff006D77),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 60,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

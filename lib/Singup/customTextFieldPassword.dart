import 'package:flutter/material.dart';
import 'package:project6/theme/app_colors.dart';

class CustomSignUpTextFieldPassword extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomSignUpTextFieldPassword({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4, // Controls the shadow depth
      shadowColor: Colors.black.withOpacity(0.3), // The color of the shadow
      borderRadius: BorderRadius.circular(8), // Rounded corners for the shadow
      child: TextFormField(
        obscureText: true,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
        ),
        validator: (value) {
          if (controller.text.isEmpty) {
            return 'Please enter your password';
          }
          if (value!.length < 8) {
            return 'Password must be at least 8 characters';
          }
          return null;
        },
        style: const TextStyle(color: AppColors.darkread),
      ),
    );
  }
}

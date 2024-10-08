import 'package:flutter/material.dart';
import 'package:project6/theme/app_colors.dart';

class CustomSignUpTextFieldUsername extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomSignUpTextFieldUsername({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4, // Controls the depth of the shadow
      shadowColor: Colors.black.withOpacity(0.3), // Color of the shadow
      borderRadius: BorderRadius.circular(8), // Rounded corners for shadow
      child: TextFormField(
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
            return 'Please enter your name';
          }
          return null;
        },
        style: const TextStyle(color: AppColors.darkread),
      ),
    );
  }
}

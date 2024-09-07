import 'package:flutter/material.dart';
import 'package:project6/theme/app_colors.dart';

/**
 * This is a custom text field for ------email input----------.
 */
class CustomTextFieldEmail extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomTextFieldEmail({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4, // Creates the shadow
      shadowColor: Colors.black.withOpacity(0.3), // Adjust the shadow color
      borderRadius: BorderRadius.circular(8), // Apply the border radius
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
          if (value == null || value.isEmpty) {
            return 'please enter your email';
          }

          // Simple email validation regex
          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
            return 'Please enter a valid email address \n(e.g., example@example.com)';
          }
          return null;
        },
        style: const TextStyle(color: AppColors.darkread),
      ),
    );
  }
}

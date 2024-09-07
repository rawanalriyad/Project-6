import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project6/theme/app_colors.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  // Controllers for name and description input
  final TextEditingController _recipeNameController = TextEditingController();
  final TextEditingController _recipeDescriptionController =
      TextEditingController();

  // Image picker and selected image file
  XFile? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  // Method to pick image from gallery
  Future<void> _pickImage() async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = pickedImage;
      });
    }
  }

  // Method to handle form submission
  void _submitRecipe() {
    if (_selectedImage != null &&
        _recipeNameController.text.isNotEmpty &&
        _recipeDescriptionController.text.isNotEmpty) {
      Navigator.pop(context, {
        'image': _selectedImage,
        'recipeTitle': _recipeNameController.text,
        'recipeDescription': _recipeDescriptionController.text,
      });
    } else {
      // Show a message if the user tries to submit an incomplete form
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Please fill in all fields and select an image')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
          title: const Text('Add New Recipe'),
          backgroundColor: AppColors.lighthread),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image picker section
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [AppColors.lighthread, AppColors.darkread],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: _selectedImage == null
                      ? const Center(
                          child: Icon(
                            Icons.add_a_photo,
                            size: 50,
                            color: Colors.white,
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            File(_selectedImage!.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 20),

              // Recipe name input
              const Text(
                ' Name :',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _recipeNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: 'Enter the recipe name',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),

              // Recipe description input
              const Text(
                ' Description :',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _recipeDescriptionController,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: 'Enter the recipe description',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
              const SizedBox(height: 20),

              // Submit button
              Center(
                child: ElevatedButton(
                  onPressed: _submitRecipe,
                  child: const Text(
                    'Add Recipe',
                    style: TextStyle(color: AppColors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.lighthread,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

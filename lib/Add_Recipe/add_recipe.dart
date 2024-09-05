import 'package:flutter/material.dart';
import 'package:project6/Add_Recipe/RecipeDescriptionInput.dart';
import 'package:project6/Add_Recipe/image_pickerWidget.dart.dart';
import 'package:project6/Add_Recipe/recipe_nameInput.dart';
import 'package:project6/Add_Recipe/submitButton.dart';

class AddRecipePage extends StatelessWidget {
  const AddRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController recipeNameController = TextEditingController();
    final TextEditingController recipeDescriptionController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Recipe'),
        backgroundColor: const Color(0xff7baaff),
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImagePickerWidget(),
              const SizedBox(height: 20),
              RecipeNameInput(controller: recipeNameController),
              const SizedBox(height: 20),
              RecipeDescriptionInput(controller: recipeDescriptionController),
              const SizedBox(height: 20),
              Center(
                child: SubmitButton(
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

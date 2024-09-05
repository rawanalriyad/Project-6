import 'dart:io';
import 'package:flutter/material.dart';

class RecipeDetailsPage extends StatelessWidget {
  final String recipeTitle;
  final File imageFile;
  final String description;

  const RecipeDetailsPage({
    super.key,
    required this.recipeTitle,
    required this.imageFile,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipeTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor: const Color(0xff7baaff),
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
             
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
             
                Image.file(
                  imageFile,
                  width: double.infinity,
                  height: screenSize.height * 0.4,
                  fit: BoxFit.cover,
                ),
               
                Container(
                  height: screenSize.height * 0.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               
                  const Text(
                    'Meal',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    recipeTitle,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                    ),
                  ),
                  const SizedBox(height: 16),
             
                  const Text(
                    'Recipe',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff666666),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff666666),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project6/Add_Recipe/add_recipe.dart';
import 'package:project6/Home/RecipeCard.dart';
import 'package:project6/Home/custom_rawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
         actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddRecipePage()),
              );
            },
          ),
        ],
      
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff7baaff),
        title: Text(
          'Cooking Recipes',
          style: TextStyle(
            fontSize: screenSize.width * 0.08,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(child: CustomDrawer()),
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
                height: screenSize.height * 0.7,
                width: screenSize.width,
                color: Colors.blueAccent.withOpacity(0.7),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    children: const [
                      RecipeCard(
                        recipeTitle: 'Burger',
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLvk2v9KKSMy93OkaOX5WTkKjDH2kAyTfOoQ&s',
                        description:
                            'A juicy burger with melted cheese and fresh ingredients.',
                      ),
                      RecipeCard(
                        recipeTitle: 'Chicken Curry',
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLvk2v9KKSMy93OkaOX5WTkKjDH2kAyTfOoQ&s',
                        description:
                            'A flavorful chicken curry with aromatic spices.',
                      ),
                      RecipeCard(
                        recipeTitle: 'Chocolate Cake',
                        imageUrl:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLvk2v9KKSMy93OkaOX5WTkKjDH2kAyTfOoQ&s',
                        description:
                            'A delicious chocolate cake that\'s rich and moist.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

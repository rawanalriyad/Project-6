import 'review.dart';

class Recipe {
  final String recipeName;
  final String description;
  final List<Review>? reviews;

  Recipe({required this.recipeName, required this.description, this.reviews});

  factory Recipe.fromJson(Map json) {
    return Recipe(
        recipeName: json['recipe_name'],
        description: json['description'],
        reviews: (json['reviews'] as List)
            .map((comment) => Review.fromJson(comment))
            .toList());
  }

  toJson() {
    return {
      'recipe_name': recipeName,
      'description': description,
      'reviews': reviews?.map((review) => review.toJson()).toList(),
    };
  }
}

import 'user.dart';

class Review {
  final String reviewContent;
  final User author;

  Review({required this.reviewContent, required this.author});

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
        reviewContent: json['review_content'],
        author: User.fromJson(json['author']));
  }

  toJson() {
    return {'review_content': reviewContent, 'author': author.toJson()};
  }
}

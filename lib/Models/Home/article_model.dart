import 'package:get/get.dart';

class ArticleModel {
  ArticleModel({
    required this.image,
    required this.id,
    required this.isSelected,
    required this.title,
    required this.text,
  });

  String image;
  String title;
  String text;
  int id;
  RxBool isSelected;
}

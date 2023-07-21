import 'package:flutter/material.dart';

class CategoryData{
  String id;
  String title;
  String images;
  Color color;

  CategoryData(this.id,
      this.title,
      this.images, this.color);

  static List<CategoryData>  getCategories(){
    return [
      CategoryData("sports","Sports"
          ,"assets/images/sports.png",Color(0xFFC91C22)),
      CategoryData("entertainment","Entertainment"
          ,"assets/images/entertainment.png",Color(0xFFF2D352)),
      CategoryData("business","Business"
          ,"assets/images/bussines.png",Color(0xFFCF7E48)),
      CategoryData("general","General"
          ,"assets/images/environment.png",Color(0xFF4882CF)),
      CategoryData("health","Health"
          ,"assets/images/health.png",Color(0xFFED1E79)),
      CategoryData("science","Science"
          ,"assets/images/science.png",Color(0xFFD587E1)),
      CategoryData("technology","Technology"
          ,"assets/images/tech.png",Color(0xFFBEAA8D)),
    ];
  }
}
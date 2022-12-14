import 'package:flutter/material.dart';

//class that store info about category
class CategoryInfo {
  //all category available in the api
  static const List<String> allCategoryName = [
    'Business',
    'Entertainment',
    'Environment',
    'Food',
    'Health',
    'Politics',
    'Science',
    'Sports',
    'Technology',
    'Top',
    'World'
  ];
  //all icons we will used with category
  static const List<IconData> allCategoryIcon = [
    Icons.business_center_rounded,
    Icons.auto_awesome_rounded,
    Icons.brightness_7_rounded,
    Icons.fastfood_rounded,
    Icons.local_hospital_rounded,
    Icons.local_police_rounded,
    Icons.science_rounded,
    Icons.sports_soccer_rounded,
    Icons.computer_rounded,
    Icons.military_tech_rounded,
    Icons.language_rounded
  ];
}

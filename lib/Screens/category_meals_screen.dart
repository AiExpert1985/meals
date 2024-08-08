import 'package:flutter/material.dart';

import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meals/meals.dart';

class CategoryMealsScreen extends StatelessWidget {
  final Category category;
  const CategoryMealsScreen({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    String title = category.title;
    List<Meal> meals = [];
    return Meals(
      meals: meals,
      title: title,
    );
  }
}

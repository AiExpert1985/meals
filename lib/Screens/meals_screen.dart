import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  final String categoryTitle;
  final List<Meal> meals;

  const MealsScreen(
      {required this.categoryTitle, required this.meals, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [for (Meal meal in meals) Text(meal.title)],
    );
  }
}

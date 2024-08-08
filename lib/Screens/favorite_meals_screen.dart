import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meals/meals.dart';

class FavoriteMealsScreen extends StatelessWidget {
  const FavoriteMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'favorite';
    List<Meal> meals = [];
    return Meals(
      meals: meals,
      title: title,
    );
  }
}

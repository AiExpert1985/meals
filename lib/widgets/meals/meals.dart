import 'package:flutter/material.dart';

import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meals/meals_item.dart';

class Meals extends StatelessWidget {
  final List<Meal> meals;
  final String title;

  const Meals({
    super.key,
    required this.meals,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // ListView.builder gives a list that is not loaded total, it loads as you scroll (used for long lists)
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealsItem(meal: meals[index]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meals/meal-details/meal_details_infoList.dart';
import 'package:meals/widgets/meals/meal-details/meal_image.dart';

class MealDetailsScreen extends StatelessWidget {
  final Meal meal;
  const MealDetailsScreen({required this.meal, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
        child: Column(
          children: [
            MealImage(meal.imageUrl),
            const SizedBox(height: 14),
            MealDetailsInfoList(
                title: 'Ingradients', infoList: meal.ingredients),
            const SizedBox(height: 24),
            MealDetailsInfoList(title: 'Steps', infoList: meal.steps),
          ],
        ),
      ),
    );
  }
}

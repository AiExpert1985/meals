import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meals/meal-details/meal_image.dart';
import 'package:meals/widgets/meals/meal_item/meals_item_data.dart';

class MealsItem extends StatelessWidget {
  final Meal meal;
  const MealsItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge, // to force the effect of shape
      elevation: 2, // give shado for the card (3d effect)
      child: InkWell(
        onTap: () =>
            context.pushNamed('/category/meals/meal-details', extra: meal),
        child: Stack(
          children: [
            MealImage(meal.imageUrl),
            MealsItemData(meal: meal),
          ],
        ),
      ),
    );
  }
}

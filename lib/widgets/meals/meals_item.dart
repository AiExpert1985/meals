import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meals/meals_item_image.dart';
import 'package:meals/widgets/meals/meals_item_data.dart';

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
      child: Stack(
        children: [
          MealItemImage(meal),
          MealsItemData(meal: meal),
        ],
      ),
    );
  }
}

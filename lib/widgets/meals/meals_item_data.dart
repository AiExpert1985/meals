import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meals/meals_item_data_trait.dart';

class MealsItemData extends StatelessWidget {
  final Meal meal;

  const MealsItemData({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0, // it is paced on the bottom of the image in the stack
      left: 0, // it starts from the left
      right: 0, // it span to the right
      child: Container(
        color: Colors.black54,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
        child: Column(
          children: [
            Text(
              meal.title,
              maxLines: 2,
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MealsItemDataTrait(
                  label: '${meal.duration} min',
                  icon: Icons.schedule,
                ),
                const SizedBox(
                  width: 12,
                ),
                MealsItemDataTrait(
                  label: meal.complexityText, // a getter in Meal class
                  icon: Icons.work,
                ),
                const SizedBox(
                  width: 12,
                ),
                MealsItemDataTrait(
                  label: meal.affordabilityText, // a getter in Meal class
                  icon: Icons.attach_money,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

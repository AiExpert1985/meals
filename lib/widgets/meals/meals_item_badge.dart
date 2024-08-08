import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsItemBadge extends StatelessWidget {
  final Meal meal;

  const MealsItemBadge({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(meal.title),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${meal.duration}'),
              const SizedBox(
                width: 12,
              ),
              Text(meal.complexity.name),
              const SizedBox(
                width: 12,
              ),
              Text(meal.affordability.name),
            ],
          )
        ],
      ),
    );
  }
}

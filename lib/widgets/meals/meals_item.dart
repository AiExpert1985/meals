import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meals/meals_item_badge.dart';
import 'package:transparent_image/transparent_image.dart';

class MealsItem extends StatelessWidget {
  final Meal meal;
  const MealsItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          FadeInImage(
            placeholder: MemoryImage(
              kTransparentImage, // kTransparentImage is dummy image from transparent_image package
            ),
            image: NetworkImage(meal.imageUrl),
          ),
          Positioned(
            bottom: 0, // it is paced on the bottom of the image in the stack
            left: 0, // it starts from the left
            right: 0, // it span to the right
            child: MealsItemBadge(meal: meal),
          ),
        ],
      ),
    );
  }
}

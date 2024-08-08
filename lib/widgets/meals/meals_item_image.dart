import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItemImage extends StatelessWidget {
  final Meal meal;
  const MealItemImage(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      placeholder: MemoryImage(
        kTransparentImage, // kTransparentImage is dummy image from transparent_image package
      ),
      image: NetworkImage(meal.imageUrl),
      fit: BoxFit.cover, // fit the box the photo is inside
      height: 300, // avoid initial jump due to different sizes
      width: double.infinity, // to take entire available width
    );
  }
}

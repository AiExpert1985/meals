import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/providers/favorite_meals_provider.dart';
import 'package:meals/widgets/meals/meal-details/meal_details_info_list.dart';
import 'package:meals/widgets/meals/meal-details/meal_image.dart';

class MealDetailsScreen extends ConsumerWidget {
  final Meal meal;
  const MealDetailsScreen({required this.meal, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(favoriteMealsProvide);
    bool isFavorite = ref.read(favoriteMealsProvide.notifier).isFavorite(meal);
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(favoriteMealsProvide.notifier).updateFavoriteMeals(meal);
              isFavorite =
                  ref.read(favoriteMealsProvide.notifier).isFavorite(meal);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(isFavorite
                      ? 'Meal was added to favorite'
                      : 'Meal was removed from favorite'),
                ),
              );
            },
            icon: Icon(isFavorite ? Icons.star : Icons.star_outline),
          ),
        ],
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

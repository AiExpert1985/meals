import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/providers/filtered_meals_provider.dart';
import 'package:meals/widgets/meals/meals.dart';

class CategoryMealsScreen extends ConsumerWidget {
  final Category category;

  const CategoryMealsScreen({
    super.key,
    required this.category,
  });

  List<Meal> filteredMeals(ref) {
    final List<Meal> meals = ref.read(filteredMealsProvider);
    return meals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Meals(
      meals: filteredMeals(ref),
      title: category.title,
    );
  }
}

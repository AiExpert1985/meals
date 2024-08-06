import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/Screens/meals_screen.dart';

import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/providers/meals_provider.dart';

class CategoryGridItem extends ConsumerWidget {
  final Category category;

  const CategoryGridItem({
    super.key,
    required this.category,
  });

  void _showCategoryMeals(BuildContext context, WidgetRef ref) {
    List<Meal> meals = ref.read(mealsProvider);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) =>
            MealsScreen(categoryTitle: category.title, meals: meals),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        _showCategoryMeals(context, ref);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.9),
              category.color.withOpacity(0.5)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(child: Text(category.title)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/meal.dart';
import 'package:meals/providers/meals_provider.dart';
import 'package:meals/providers/selected_category_provider.dart';

class MealsScreen extends ConsumerWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meals = ref.watch(mealsProvider);
    final category = ref.watch(selectedCategoryProvider);
    return Scaffold(
      appBar: AppBar(title: Text(category?.title ?? "All categories")),
      body: ListView(children: [for (Meal meal in meals) Text(meal.title)]),
    );
  }
}

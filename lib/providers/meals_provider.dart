import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

import 'package:meals/providers/dummy_meals_provider.dart';
import 'package:meals/providers/selected_category_provider.dart';

final mealsProvider = Provider<List<Meal>>((ref){
  final dummyMeals = ref.watch(dummyMealsProvider);
  final selectedCategory = ref.watch(selectedCategoryProvider);
  if (selectedCategory==null){
    return dummyMeals;
    }
  return dummyMeals.where((meal)=> meal.categories.contains(selectedCategory.id)).toList();
});
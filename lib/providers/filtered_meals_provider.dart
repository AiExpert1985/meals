import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/meal.dart';
import 'package:meals/providers/dummy_meals_provider.dart';

final filteredMealsProvider = Provider<List<Meal>>((ref) {
  final dummyMeals = ref.watch(dummyMealsProvider);
  return dummyMeals;
});

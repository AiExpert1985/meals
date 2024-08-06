import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/providers/dummy_meals_provider.dart';

final mealsProvider = Provider((ref) {
  final dummyMeals = ref.watch(dummyMealsProvider);
  return dummyMeals;
});

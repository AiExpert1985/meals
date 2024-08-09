import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void updateFavoriteMeals(Meal meal) =>
      isFavorite(meal) ? _removeMeal(meal) : _addMeal(meal);

  void _addMeal(Meal meal) => state = [...state, meal];

  void _removeMeal(Meal meal) => state = state.where((m) => m != meal).toList();

  bool isFavorite(Meal meal) => state.contains(meal);
}

final favoriteMealsProvide =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);

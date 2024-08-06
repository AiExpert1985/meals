import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/providers/dummy_meals_provider.dart';

// final mealsProvider = Provider((ref){
//   final dummyMeals = ref.watch(dummyMealsProvider);
//   return dummyMeals;
// });

class MealsNotifier extends StateNotifier<List<Meal>> {
  MealsNotifier(): super([]);

  // void filteredMeals(){
  //   ref.

    // https://github.com/rrousselGit/riverpod/issues/605
  // }
}

final mealsProvider =
    StateNotifierProvider<MealsNotifier, List<Meal>>((ref) {
  return MealsNotifier();
});







class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
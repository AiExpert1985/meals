import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/providers/favorite_meals_provider.dart';
import 'package:meals/widgets/meals/meals.dart';

class FavoriteMealsScreen extends ConsumerWidget {
  const FavoriteMealsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String title = 'Favorite meals';
    final meals = ref.read(favoriteMealsProvide);
    return Meals(
      meals: meals,
      title: title,
    );
  }
}

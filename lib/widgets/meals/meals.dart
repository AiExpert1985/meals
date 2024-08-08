import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/meal.dart';

class Meals extends ConsumerWidget {
  final List<Meal> meals;
  final String title;

  const Meals({
    super.key,
    required this.meals,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: [
          for (Meal meal in meals) Text(meal.title),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/Screens/meals_screen.dart';

import 'package:meals/models/category.dart';
import 'package:meals/providers/selected_category_provider.dart';

class CategoryGridItem extends ConsumerWidget {
  final Category category;

  const CategoryGridItem({
    super.key,
    required this.category,
  });

  void _updateSelectedCategoryProvider(WidgetRef ref) {
    ref
        .read(selectedCategoryProvider.notifier)
        .update((state) => state = category);
  }

  void _showMealsScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const MealsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        _updateSelectedCategoryProvider(ref);
        _showMealsScreen(context);
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

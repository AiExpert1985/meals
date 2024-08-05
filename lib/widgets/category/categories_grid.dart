import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/category.dart';
import 'package:meals/widgets/category/category_grid_item.dart';
import 'package:meals/providers/available_categories_provider.dart';

class CategoriesGridView extends ConsumerWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableCategories = ref.read(avaialbeCategoriesProvider);
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (Category category in availableCategories)
          CategoryItem(category: category)
      ],
    );
  }
}

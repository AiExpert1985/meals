import 'package:flutter/material.dart';

import 'package:meals/widgets/category/categories_grid.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: const CategoriesGridView(),
    );
  }
}

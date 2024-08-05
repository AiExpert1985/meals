import 'package:flutter/material.dart';

import 'package:meals/widgets/categories/category_grid.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: const CategoryGrid(),
    );
  }
}

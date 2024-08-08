import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/Screens/favorite_meals_screen.dart';

import 'package:meals/widgets/bottom_navigation_bar/tabs_bottom_navigation.dart';
import 'package:meals/widgets/drawer/side_drawer.dart';
import 'package:meals/Screens/categories_screen.dart';

class HomeScreen extends ConsumerWidget {
  final String content;

  const HomeScreen({
    super.key,
    this.content = 'categories',
  });

  @override
  Widget build(Object context, WidgetRef ref) {
    Widget screenContent = const CategoriesScreen();
    if (content == 'favorite') {
      screenContent = const FavoriteMealsScreen();
    }
    return Scaffold(
      appBar: AppBar(title: Text(content)),
      drawer: const LeftDrawer(),
      body: screenContent,
      bottomNavigationBar: const HomeBottomNavigation(),
    );
  }
}

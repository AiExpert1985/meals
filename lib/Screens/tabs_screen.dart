import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/Screens/categories_screen.dart';
import 'package:meals/Screens/meals_screen.dart';
import 'package:meals/widgets/bottom_navigation_bar/tabs_bottom_navigation.dart';

import 'package:meals/widgets/drawer/side_drawer.dart';
import 'package:meals/providers/active_screen_provider.dart';

class TabsScreen extends ConsumerWidget {
  const TabsScreen({super.key});

  @override
  Widget build(Object context, WidgetRef ref) {
    final activeScreen = ref.watch(homeScreenContentProvider);
    Widget screenContent = const CategoriesScreen();

    if (activeScreen == 1) {
      return const MealsScreen();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('some title')),
      drawer: const LeftDrawer(),
      body: screenContent,
      bottomNavigationBar: const TabsBottomNavigation(),
    );
  }
}

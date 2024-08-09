import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/widgets/categories/categories.dart';
import 'package:meals/widgets/meals/favorite/favorite.dart';
import 'package:meals/providers/home_screen_content_name_provider.dart';
import 'package:meals/widgets/home_screen/home_bottom_navigation.dart';

import 'package:meals/widgets/home_screen/left_drawer.dart';

class HomeScreen extends ConsumerWidget {
  final String content;

  const HomeScreen({
    super.key,
    this.content = 'categories',
  });

  @override
  Widget build(Object context, WidgetRef ref) {
    late Widget screenContent;
    final String contentName = ref.watch(homeScreenContentNameProvider);
    if (contentName == 'categories') {
      screenContent = const CategoriesScreen();
    } else {
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

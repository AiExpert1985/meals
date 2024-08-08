import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meals/Screens/category_meals_screen.dart';
import 'package:meals/models/category.dart';
import 'package:meals/Screens/tabs_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp.router(
        routerConfig: _router,
      ),
    ),
  );
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: '/',
      path: '/',
      builder: (context, state) => const TabsScreen(),
    ),
    GoRoute(
      name: '/favorite',
      path: '/favorite',
      builder: (context, state) =>
          TabsScreen(content: state.pathParameters['content']!),
    ),
    GoRoute(
      name: '/category/meals',
      path: '/category/meals',
      builder: (context, state) =>
          CategoryMealsScreen(category: state.extra as Category),
    ),
  ],
);

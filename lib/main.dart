import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meals/Screens/category_meals_screen.dart';
import 'package:meals/models/category.dart';
import 'package:meals/Screens/home_screen.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/categories',
  routes: <RouteBase>[
    GoRoute(
      name: '/categories',
      path: '/categories',
      builder: (context, state) => const HomeScreen(content: 'categories'),
    ),
    GoRoute(
      name: '/favorite',
      path: '/favorite',
      builder: (context, state) => const HomeScreen(content: 'favorite'),
    ),
    GoRoute(
      name: '/category/meals',
      path: '/category/meals',
      builder: (context, state) =>
          CategoryMealsScreen(category: state.extra as Category),
    ),
  ],
);

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp.router(
        routerConfig: _router,
      ),
    ),
  );
}

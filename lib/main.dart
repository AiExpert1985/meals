import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
  routes: [
    GoRoute(
      name: '/',
      path: '/',
      builder: (context, state) => const TabsScreen(),
    ),
  ],
);

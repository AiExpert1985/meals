import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/Screens/tabs_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(Object context) {
    return const MaterialApp(
      home: TabsScreen(),
    );
  }
}

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}
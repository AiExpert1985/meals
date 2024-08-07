import 'package:flutter/material.dart';

class TabsBottomNavigation extends StatelessWidget {
  const TabsBottomNavigation({super.key});

  @override
  Widget build(Object context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.set_meal),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Categories',
        ),
      ],
    );
  }
}

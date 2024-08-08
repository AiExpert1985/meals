import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => index == 0 ? context.goNamed('/categories'): context.goNamed('/favorite'),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.set_meal),
          label: 'Favorite',
        ),
      ],
    );
  }
}

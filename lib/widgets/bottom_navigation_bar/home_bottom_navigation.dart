import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/home_screen_content_name_provider.dart';

class HomeBottomNavigation extends ConsumerWidget {
  const HomeBottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      onTap: (index) => index == 0
          ? ref
              .read(homeScreenContentNameProvider.notifier)
              .update((state) => 'categories')
          : ref
              .read(homeScreenContentNameProvider.notifier)
              .update((state) => 'favorite'),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.set_meal),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Favorite',
        ),
      ],
    );
  }
}

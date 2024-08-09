import 'package:flutter/material.dart';

class MealDetailsInfoList extends StatelessWidget {
  final List<String> infoList;
  final String title;
  const MealDetailsInfoList(
      {required this.infoList, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 12,
      ),
      for (String ingradient in infoList)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            ingradient,
            textAlign: TextAlign.center,
          ),
        ),
    ]);
  }
}

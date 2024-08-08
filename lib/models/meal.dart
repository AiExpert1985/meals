enum Affordability {
  affordable,
  pricey,
  luxurious,
}

enum Complexity {
  simple,
  challenging,
  hard,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.affordability,
    required this.complexity,
    required this.imageUrl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
  });

  String get complexityText {
    return complexity.name[0].toUpperCase() + complexity.name.substring(1);
  }

  String get affordabilityText {
    return affordability.name[0].toUpperCase() +
        affordability.name.substring(1);
  }
}

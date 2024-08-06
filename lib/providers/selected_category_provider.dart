import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/category.dart';

final selectedCategoryProvider = StateProvider<Category?>((ref) => null);

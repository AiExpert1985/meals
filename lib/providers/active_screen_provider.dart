import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 0: categories screen
/// 1: meals screen
/// default is categories screen
final homeScreenContentProvider = StateProvider<int>((ref) => 0);

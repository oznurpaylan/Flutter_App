import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({required this.categoryId, required this.name, required this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: "Tüm",
  icon: Icons.clear_all,
);

final sinemaCategory = Category(
  categoryId: 1,
  name: "Sinema",
  icon: Icons.movie_filter,
);

final tiyatroCategory = Category(
  categoryId: 2,
  name: "Tiyatro",
  icon: Icons.local_movies_sharp,
);

final playCategory = Category(
  categoryId: 3,
  name: "Oyunlar",
  icon: Icons.gamepad_outlined,
);

final localCategory = Category(
  categoryId: 4,
  name: "Yerel Etkinlikler",
  icon: Icons.location_on,
);

final categories = [
  allCategory,
  sinemaCategory,
  tiyatroCategory,
  playCategory,
  localCategory,
];
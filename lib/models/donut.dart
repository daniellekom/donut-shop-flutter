import 'package:flutter/material.dart';

class Donut {
  final String flavorName;
  final String price;
  final MaterialColor color;
  final String imagePath;
  final String? sugar;
  final String? salt;
  final String? fat;
  final String? energy;

  Donut({
    required this.flavorName,
    required this.price,
    required this.color,
    required this.imagePath,
    this.sugar,
    this.salt,
    this.fat,
    this.energy,
  });
}

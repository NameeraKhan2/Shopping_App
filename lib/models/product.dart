import 'dart:core';
import 'package:flutter/foundation.dart';
class Product with ChangeNotifier {
  late final int id;
  late final String name;
  late final double cost;
   int quantity;
  late final int availability;
  late final String details;
  late final String category;
  late final String imageURL;
  late bool isFavorite;


  Product({required this.id,
    required this.name,
    required this.cost,
    this.quantity=0,
    required this.availability,
    required this.details,
    required this.category,
    required this.imageURL,
    this.isFavorite = false,
  });
}
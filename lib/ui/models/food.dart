import 'package:flutter/material.dart';

class Food {
  int id;
  String name;
  String category;
  double calory;
  String photo;

  Food(
      {this.id,
      @required this.name,
      @required this.category,
      @required this.calory,
      @required this.photo});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "category": category,
      "calory": calory,
      "photo": photo
    };
  }

  factory Food.fromMap(Map<String, dynamic> incomingData) {
    return Food(
        id: incomingData['id'],
        name: incomingData['name'],
        category: incomingData['category'],
        calory:incomingData['calory'],
        photo:incomingData['photo'] );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formatter = DateFormat("dd/MM/yyyy");

enum Category {
  food,
  travel,
  leisure,
  work,
}

const Map<Category, IconData> categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.work,
  Category.leisure: Icons.movie,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  late final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formatedDate => formatter.format(date);
}

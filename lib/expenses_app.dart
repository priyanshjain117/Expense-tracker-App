import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<ExpensesApp> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "title1",
      amount: 300,
      time: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "title2",
      amount: 301,
      time: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "title3",
      amount: 302,
      time: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("chart"),
            Text("list of expenses.."),
          ],
        ),
      ),
    );
  }
}

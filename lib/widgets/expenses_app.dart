import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';

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
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: "title2",
      amount: 601,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "title3",
      amount: 982,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("chart"),
          Expanded(child: ExpensesList(_registeredExpenses)),
        ],
      ),
    );
  }
}

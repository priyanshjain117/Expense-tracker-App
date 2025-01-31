import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(this.listExpenses, {super.key});

  final List<Expense> listExpenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listExpenses.length,
      itemBuilder: (context, idx) => Text(listExpenses[idx].title),
    );
  }
}

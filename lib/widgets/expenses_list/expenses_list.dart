import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import '../../models/expense.dart';
class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  const  ExpensesList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenses.length ,itemBuilder:  (context, index){
      return ExpenseItem(expenses[index]);
    });
  }
}

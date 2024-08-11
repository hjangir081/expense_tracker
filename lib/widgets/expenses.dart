import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return ExpensesState();
  }
}

class ExpensesState extends State<Expenses> {
  final List<Expense> registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 299.99,
        date: DateTime.now(),
        category: Category.work
    ),
    Expense(
        title: 'Movie',
        amount: 199,
        date: DateTime.now(),
        category: Category.leisure
    ),
    Expense(
        title: 'Goa Trip',
        amount: 299.99,
        date: DateTime.now(),
        category: Category.travel
    ),
    Expense(
        title: "Domino's Pizza",
        amount: 99.99,
        date: DateTime.now(),
        category: Category.food 
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ExpensesList(expenses: registeredExpenses))
        ],
      ),
    );
  }
}

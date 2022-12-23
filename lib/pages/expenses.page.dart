import 'package:auto_route/auto_route.dart';
import 'package:firestorecrud/router/router.gr.dart';
import 'package:firestorecrud/widgets/expense_list.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.router.push(const AddExpenseRoute());
        },
        label: const Text("Add new expenses"),
        icon: const Icon(Icons.add),
      ),
      backgroundColor: Colors.red[50],
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Expenses Data"),
                  ],
                ),
              )),
          const Expanded(flex: 9, child: ExpenseListBlock())
        ],
      )),
    );
  }
}

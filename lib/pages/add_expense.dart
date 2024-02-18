import 'package:finance_manager/components/amount_field.dart';
import 'package:finance_manager/components/app_bar.dart';
import 'package:finance_manager/utils/utility.dart';
import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  TextEditingController amountController = TextEditingController();
  String expenseValue = '';
  @override
  Widget build(BuildContext context) {
    // amountController.text = Utilities.getCurrency('0');
    return Scaffold(
      appBar: FAppBar(
        title: 'Add Expense',
        color: Colors.red.shade400,
        textColor: Colors.white,
      ),
      backgroundColor: Colors.red.shade400,
      body: const AmountTextField(),
    );
  }
}

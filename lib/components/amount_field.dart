import 'package:finance_manager/utils/utility.dart';
import 'package:flutter/material.dart';

class AmountTextField extends StatelessWidget {
  const AmountTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController amountController = new TextEditingController();
    String expenseValue;
    return TextField(
      controller: amountController,
      decoration: InputDecoration(
          hintText: Utilities.getCurrency('0'),
          border: InputBorder.none,
          hintStyle: const TextStyle(
            color: Colors.white,
          )),
      style: const TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
      onChanged: (value) {
        expenseValue = value.replaceAll('₹', '');
        amountController.text = Utilities.getCurrency(expenseValue);
      },
      keyboardType: TextInputType.number,
    );
  }
}

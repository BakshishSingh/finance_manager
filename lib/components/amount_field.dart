import 'package:finance_manager/utils/utility.dart';
import 'package:flutter/material.dart';

class AmountTextField extends StatelessWidget {
  TextEditingController textController;
  AmountTextField({super.key, required this.textController});

  @override
  Widget build(BuildContext context) {
    String expenseValue;
    return TextField(
      controller: textController,
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
        textController.text = Utilities.getCurrency(expenseValue);
      },
      keyboardType: TextInputType.number,
    );
  }
}

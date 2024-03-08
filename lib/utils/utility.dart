import 'package:flutter/material.dart';

class Utilities {
  static String getCurrency(String amount) {
    double amountDouble = double.parse(amount);
    if (amountDouble < 0) {
      return '-₹${-amountDouble}';
    } else {
      return '₹$amount';
    }
  }

  static void loadPage(BuildContext context, Widget pageToLoad) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pageToLoad,
      ),
    );
  }
}

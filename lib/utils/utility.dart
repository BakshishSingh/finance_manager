import 'package:flutter/material.dart';

class Utilities {
  static String getCurrency(String amount) {
    return '₹$amount';
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

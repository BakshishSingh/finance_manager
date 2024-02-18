import 'package:finance_manager/components/app_bar.dart';
import 'package:finance_manager/components/button_primary.dart';
import 'package:finance_manager/utils/utility.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const FAppBar(title: "Home"),
        floatingActionButton: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add_circle,
            size: 75,
            color: Colors.green,
            shadows: [
              Shadow(
                color: Colors.black.withAlpha(12),
                offset: const Offset(2, 2),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: [
            const Text(
              'Account Balance is',
            ), //Can make it button to see account balance in different accounts
            Text(
              Utilities.getCurrency('2000'),
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryTextButton(
                  buttonText: 'Income\n${Utilities.getCurrency('5000')}',
                  buttonColor: Colors.green,
                ),
                PrimaryTextButton(
                  buttonText: 'Expenses\n${Utilities.getCurrency('3000')}',
                  buttonColor: Colors.red,
                ),
              ],
            ),
            TabBar(tabs: [Text('Today'), Text('Week'), Text('Month')])
          ],
        ),
      ),
    );
  }
}

import 'package:finance_manager/components/app_bar.dart';
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
                  offset: const Offset(
                    2,
                    2,
                  ))
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
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 130,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      color: Colors.green,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Income\n${Utilities.getCurrency('5000')}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 130,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      color: Colors.red,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Expenses\n${Utilities.getCurrency('3000')}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
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

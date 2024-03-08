import 'package:finance_manager/components/action_button.dart';
import 'package:finance_manager/components/app_bar.dart';
import 'package:finance_manager/components/button_primary.dart';
import 'package:finance_manager/components/expandable_fab.dart';
import 'package:finance_manager/logic/expense_manager.dart';
import 'package:finance_manager/pages/add_expense.dart';
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
        floatingActionButton: const ExpandableFab(
          distance: 60,
          children: [
            ActionButton(
              icon: Icon(Icons.savings, color: Colors.white),
              backgroundColor: Colors.green,
            ),
            ActionButton(
              icon: Icon(Icons.currency_rupee_rounded, color: Colors.white),
              backgroundColor: Colors.red,
            ),
          ],
        )
        // IconButton(
        //   onPressed: () async {
        //     final result = await Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const AddExpense(),
        //       ),
        //     );
        //     setState(() {});
        //     //Utilities.loadPage(context, const AddExpense());
        //   },
        //   icon: Icon(
        //     Icons.add_circle,
        //     size: 75,
        //     color: Colors.blue,
        //     shadows: [
        //       Shadow(
        //         color: Colors.black.withAlpha(12),
        //         offset: const Offset(2, 2),
        //       )
        //     ],
        //   ),
        // )
        ,
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: [
            const Text(
              'Account Balance is',
            ), //Can make it button to see account balance in different accounts
            Text(
              Utilities.getCurrency(
                  ExpenseManager.instance.totalBalance.toString()),
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: ExpenseManager.instance.totalBalance < 0
                    ? Colors.red
                    : Colors.green,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryTextButton(
                  buttonText:
                      'Income\n${Utilities.getCurrency(ExpenseManager.instance.totalIncome.toString())}',
                  buttonColor: Colors.green,
                ),
                PrimaryTextButton(
                  buttonText: 'Expenses\n${Utilities.getCurrency(
                    ExpenseManager.instance.totalExpenses.toString(),
                  )}',
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

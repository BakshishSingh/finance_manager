class ExpenseManager {
  static final ExpenseManager _singleton = ExpenseManager._internal();
  factory ExpenseManager() {
    return _singleton;
  }
  ExpenseManager._internal();
  static ExpenseManager get instance => _singleton;

  double totalExpenses = 0;
  double totalIncome = 0;
  double totalBalance = 0;

  addExpense(double expenseValue) {
    totalExpenses += expenseValue;
    totalBalance = totalIncome - totalExpenses;
  }
}

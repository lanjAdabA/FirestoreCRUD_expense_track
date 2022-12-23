// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:firestorecrud/pages/add_expense.dart';
import 'package:firestorecrud/pages/home.page.dart';
import 'package:firestorecrud/pages/expenses.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: ExpensesPage),
    AutoRoute(page: AddExpensePage),
  ],
)
class $AppRouter {}

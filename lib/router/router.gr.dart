// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/add_expense.dart' as _i3;
import '../pages/expenses.page.dart' as _i2;
import '../pages/home.page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ExpensesRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ExpensesPage(),
      );
    },
    AddExpenseRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AddExpensePage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          ExpensesRoute.name,
          path: '/expenses-page',
        ),
        _i4.RouteConfig(
          AddExpenseRoute.name,
          path: '/add-expense-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ExpensesPage]
class ExpensesRoute extends _i4.PageRouteInfo<void> {
  const ExpensesRoute()
      : super(
          ExpensesRoute.name,
          path: '/expenses-page',
        );

  static const String name = 'ExpensesRoute';
}

/// generated route for
/// [_i3.AddExpensePage]
class AddExpenseRoute extends _i4.PageRouteInfo<void> {
  const AddExpenseRoute()
      : super(
          AddExpenseRoute.name,
          path: '/add-expense-page',
        );

  static const String name = 'AddExpenseRoute';
}

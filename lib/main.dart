import 'package:expenser/expenselistmodel.dart';
import 'package:expenser/homepage.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';


void main() {
  final expenses = ExpenseListModel();
  runApp(
      ScopedModel<ExpenseListModel>(model: expenses, child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Expense calculator'),
    );
  }
}

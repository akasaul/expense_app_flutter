import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      amount: 16.54,
      date: DateTime.now(),
      title: 'Groceries',
    )
  ];

  void _addNewTransaction(String txtTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      amount: txAmount,
      date: DateTime.now(),
      title: txtTitle,
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

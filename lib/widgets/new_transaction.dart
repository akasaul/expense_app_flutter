import 'package:expense_app_flutter/models/transaction.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              // onChanged: (val) => {titleInput = val},
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: amountController,
              // onChanged: (value) => {amountInput = value},
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            OutlinedButton(
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.purple,
              ),
            )
          ],
        ),
      ),
    );
  }
}

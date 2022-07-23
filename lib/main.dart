import 'package:flutter/material.dart';

import 'model/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Expense'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Transaction> transaction = [
    Transaction(id: "1", title: "Books", amount: 1000, date: DateTime.now()),
    Transaction(id: "2", title: "Phones", amount: 2000, date: DateTime.now()),
    Transaction(id: "3", title: "Laptops", amount: 3000, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: transaction.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            elevation: 10,
            child: ListTile(
              title: Text(transaction[index].title),
              subtitle: Text('${transaction[index].amount}'),
              trailing: Text('${transaction[index].date}'),
            ),
          );
        },
      )
    );
  }
}

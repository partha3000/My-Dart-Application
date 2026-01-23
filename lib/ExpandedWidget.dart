import 'package:application_demo1/ScrollView2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expanded Widget",
      theme: ThemeData(primarySwatch: Colors.grey),
      home: ExpandedW(),
    );
  }
}

class ExpandedW extends StatelessWidget {
  const ExpandedW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Screen Views"),
        backgroundColor: Colors.grey,
      ),

      body: Row(
        children: [
          Container(width: 50, height: 100, color: Colors.red),
          Expanded(
            flex: 4,
            child: Container(width: 50, height: 100, color: Colors.green),
          ),
          Container(width: 50, height: 100, color: Colors.orange),
          Expanded(
            flex: 3,
            child: Container(width: 50, height: 100, color: Colors.blue),
          ),
          Expanded(
            flex: 3,
              child: Container(width: 50, height: 100, color: Colors.yellow)
          ),
        ],
      ),
    );
  }
}

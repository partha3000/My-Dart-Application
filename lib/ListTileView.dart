import 'package:application_demo1/ScrollView2.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: ListTile(),
    );
  }
}

class ListTile extends StatelessWidget {
  const ListTile({super.key});

  @override
  Widget build(BuildContext context) {

    var arrNames = ['Ram', 'Roy', 'Tom', 'Joy', 'krsna','Top'];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ListTime Screen')),
      ),
    );
  }
}
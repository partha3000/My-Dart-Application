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
      debugShowCheckedModeBanner: false,
      title: "DecorationApps",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: DecorationContainer(),
    );
  }
}

class DecorationContainer extends StatelessWidget {
  const DecorationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Decoration Apps"),
      ),
    );
  }

}
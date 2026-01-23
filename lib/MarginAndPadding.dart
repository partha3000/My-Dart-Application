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
      title: "Margin&Padding",
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Margin & Padding')),
      ),
      body: Container(
        color: Colors.lightGreen,
        margin: EdgeInsets.all(25),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text("New text views", style: TextStyle(fontSize: 25, color: Colors.white),),
        ),
      ),
    );
  }

}
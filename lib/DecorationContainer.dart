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
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text("Flutter Decoration Apps")),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.lightGreenAccent,
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration (
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 4,
                color: Colors.black38
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.red,
                )
              ]
            ),
          ),
        ),
      ),
    );
  }

}
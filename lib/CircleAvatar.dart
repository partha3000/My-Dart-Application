import 'package:application_demo1/appBar.dart';
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
      title: "Circle Avatar",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: CircleAvatarScreen(),
    );
  }
}

class CircleAvatarScreen extends StatelessWidget{
  const CircleAvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var arrList = ['Home', 'about', 'new', 'page', 'setting', 'profile'];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Circle Avatar page")),
      ),
      body: ListView.,
    );
  }
}
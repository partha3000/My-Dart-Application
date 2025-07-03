import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green,
          body:Center(
            child: Text('Today is flutter journey start', style: TextStyle(fontSize: 25, color: Colors.red),),
          ),
        ),
      ),
    );
  }
}

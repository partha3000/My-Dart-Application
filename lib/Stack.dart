import 'package:application_demo1/appBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),),
        body: Center(
          child: Stack(
            children: [
              Text('Bangladesh', style: TextStyle(fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold, ),),
              Center(
                child: Container(width: 600, height: 400, color: Colors.green),
              ),
              Positioned(
                child: Center(
                  child: CircleAvatar(radius: 100, backgroundColor: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

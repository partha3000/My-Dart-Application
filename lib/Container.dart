
import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        body: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(color: Colors.blue),
          child:Center(
            child:
            Text('This is my application', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          )
        ),
      ),
    );
  }
}

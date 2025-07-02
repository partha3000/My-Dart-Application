import 'package:flutter/material.dart';

void main () => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( backgroundColor: Colors.green, title: Text('Home Page', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.camera, size: 25,)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.message, size: 25,))
          ],
          ),
        body: Center(
          child: Text('This is my flutter Application', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),),
        ),
      ),
    );
  }
}

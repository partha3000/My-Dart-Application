import 'package:application_demo1/appBar.dart';
import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            ListTile (
              title:Text('Mr Ram', style: TextStyle(fontSize: 30, color: Colors.black),),
              subtitle: Text("Hello Every one welcome to flutter Application", style: TextStyle(fontSize: 25, color: Colors.black),),
              trailing: CircleAvatar(
                child: Icon(Icons.search),
              ),
              leading: CircleAvatar(
                child: Icon(Icons.message),
              ),
            ),
            ListTile (
              title:Text('Mr Muna', style: TextStyle(fontSize: 30, color: Colors.black),),
              subtitle: Text("Hello Every one welcome to flutter Application", style: TextStyle(fontSize: 25, color: Colors.black),),
              trailing: CircleAvatar(
                child: Icon(Icons.search),
              ),
              leading: CircleAvatar(
                child: Icon(Icons.message),
              ),
            ),
            ListTile (
              title:Text('Mr Sam', style: TextStyle(fontSize: 30, color: Colors.black),),
              subtitle: Text("Hello Every one welcome to flutter Application", style: TextStyle(fontSize: 25, color: Colors.black),),
              trailing: CircleAvatar(
                child: Icon(Icons.search),
              ),
              leading: CircleAvatar(
                child: Icon(Icons.message),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

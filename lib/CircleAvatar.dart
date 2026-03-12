import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle Avatar Page',
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: HomepageScreen(),
    );
  }
}

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Circle Avatar page')),
      ),
      body: Center(
          child: CircleAvatar(
            backgroundColor: Colors.green,
            maxRadius: 40,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                    width: 40,
                    child: Image.asset('images/me.png')),
                Text('Text', style: TextStyle(color: Colors.red),)
              ],
            ),
          ),
      ),
    );
  }
}


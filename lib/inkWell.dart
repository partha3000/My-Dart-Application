import 'package:application_demo1/appBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My InkWell Widget')),
        body: Center(
          child: InkWell(
            onDoubleTap: () {
              print('onDouble is click');
            },
            onLongPress: () {
              print('onLong is Click');
            },
            onTap: () {
              print('onTap is click');
            },
            child: Container(
              width: 300,
              height: 300,
              color: Colors.deepOrange,
              child: InkWell(
                onTap: () {
                  print('Text IS click !');
                },
                child: Center(
                  child: Text(
                    'Click Here!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//import 'package:application_demo1/appBar.dart';
import 'package:application_demo1/appBar.dart';
import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
            appBar: AppBar(title: Text("Column and Row",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),),

            body: ListView (
                children: <Widget> [
                  Container(
                    height: 200,
                    width: 300,
                    color: Colors.green,
                  ),
                  SizedBox(height: 10,),

                  Container(
                    height:200,
                    width: 300,
                    color: Colors.red,
                  ),
                  SizedBox(height: 10,),

                  Container(
                    width: 300,
                    height: 200,
                    color: Colors.blue,
                  ),
              SizedBox(height: 10,),

              Container(
                height: 200,
                width: 300,
                color: Colors.yellow,
                  ),
                ],
            ),
          )
      ),
    );
  }
}

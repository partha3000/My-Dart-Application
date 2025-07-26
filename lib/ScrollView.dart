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
        appBar: AppBar(
          title: Center(
            child: Container(
              width:5000 ,
              height:60 ,
              color: Colors.green,
              child: Center(
                child: Text(
                  'My ScrollView',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin:const EdgeInsets.all(8.0),
                          padding:const EdgeInsets.all(8.0),
                          height: 300,
                          width: 300,
                          color: Colors.red,
                        ),
                        Container(
                          margin:const EdgeInsets.all(8.0),
                          padding:const EdgeInsets.all(8.0),
                          height: 300,
                          width: 300,
                          color: Colors.blue,
                        ),
                        Container(
                          margin:const EdgeInsets.all(8.0),
                          padding:const EdgeInsets.all(8.0),
                          height: 300,
                          width: 300,
                          color: Colors.orange,
                        ),
                        Container(
                          margin:const EdgeInsets.all(8.0),
                          padding:const EdgeInsets.all(8.0),
                          height: 300,
                          width: 300,
                          color: Colors.yellow,
                        ),
                        Container(
                          margin:const EdgeInsets.all(8.0),
                          padding:const EdgeInsets.all(8.0),
                          height: 300,
                          width: 300,
                          color: Colors.green,
                        ),
                        Container(
                          margin:const EdgeInsets.all(8.0),
                          padding:const EdgeInsets.all(8.0),
                          height: 300,
                          width: 300,
                          color: Colors.black,
                        ),
                        Container(
                          margin:const EdgeInsets.all(8.0),
                          padding:const EdgeInsets.all(8.0),
                          height: 300,
                          width: 300,
                          color: Colors.white,
                        ),
                    
                      ],
                    ),
                  ),
                  Container(
                    padding:const EdgeInsets.all(8.0),
                    margin:const EdgeInsets.all(8.0),
                    height: 300,
                    color: Colors.green,
                  ),
                  Container(
                    padding:const EdgeInsets.all(8.0),
                    margin:const EdgeInsets.all(8.0),
                    height: 300,
                    color: Colors.blue,
                  ),
                  Container(
                    padding:const EdgeInsets.all(8.0),
                    margin:const EdgeInsets.all(8.0),
                    height: 300,
                    color: Colors.yellow,
                  ),
                  Container(
                    padding:const EdgeInsets.all(8.0),
                    margin:const EdgeInsets.all(8.0),
                    height: 300,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    padding:const EdgeInsets.all(8.0),
                    margin:const EdgeInsets.all(8.0),
                    height: 300,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

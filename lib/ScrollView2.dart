import 'package:application_demo1/appBar.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MY Flutter Application",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Screen")),
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
    );
  }
}
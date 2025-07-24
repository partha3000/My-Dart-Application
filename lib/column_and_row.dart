//import 'package:application_demo1/appBar.dart';
import 'package:application_demo1/appBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Column and Row",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          body: Container(
            // height: 500,
            // width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("India", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),),
                    Text("Bangladesh", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),),
                    Text("Nepal", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                    Text("Sri Lanka", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amber),),
                  ],
                ),
                Text("India"),
                Text("Bangladesh"),
                Text("Nepal"),
                Text("Sri Lanka"),

                IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 25)),
                ElevatedButton(
                  onPressed: () {},
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: Icon(Icons.email),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

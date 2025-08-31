import 'package:application_demo1/appBar.dart';
import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var arrName = ['Pm', 'OM', 'Tm', 'DR', 'Pn', 'Ar', 'Rk', 'Ks'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('List View Page', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),)),),
        
        body: ListView.separated(itemBuilder: (context, index) {
          return Row(
            children: [
              Text(arrName[index], style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: Colors.black),)
            ],
          );
        },
          itemCount: arrName.length,
          separatorBuilder: (context, index) {
          return Divider(height: 100, thickness: 2,);
          },
        )
      ),
    );
  }
}

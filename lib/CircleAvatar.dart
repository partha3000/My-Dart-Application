import 'package:application_demo1/appBar.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Circle Avatar",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: CircleAvatarScreen(),
    );
  }
}

class CircleAvatarScreen extends StatelessWidget{
  const CircleAvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var arrList = ['Home', 'about', 'new', 'page', 'setting', 'profile'];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Circle Avatar page")),
      ),
      body:
      ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          title: Text(arrList[index]),
          subtitle: Text('Number'),
          trailing: Image.asset('images/me.png'),
        );
      },
        itemCount: arrList.length,
        separatorBuilder: (context, index) {
          return Divider(height: 25, thickness: 1,);
        },
      ),


    );
  }
}
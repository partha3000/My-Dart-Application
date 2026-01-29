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

    var arrList = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten'];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Circle Avatar", style: TextStyle(fontFamily: 'serif'),)),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.separated(itemBuilder: (context, index){
      return ListTile(
        leading: Text('${index+1}'),
        title: Text(arrList[index]),
        subtitle: Text("Give the number list", style: TextStyle(fontFamily: 'serif', fontSize: 15),),
        trailing: Icon(Icons.add),
      );
      },
      itemCount: arrList.length,
        separatorBuilder: (context, index){
        return Divider(
          height: 20,
          thickness: 1,
        );
        },
      ),
    );
  }
}
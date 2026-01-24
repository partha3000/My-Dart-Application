import 'package:application_demo1/ScrollView2.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: ListTileScreen(),
    );
  }
}

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var arrNames = ['Ram', 'Roy', 'Tom', 'Joy', 'krsna','Top'];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ListTime Screen')),
      ),

      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          title: Text(arrNames[index]),
          subtitle: Text('Number'),
          trailing: Image.asset('images/me.png'),
        );
      },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
        return Divider(height: 25, thickness: 1,);
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Flutter ListView Application', style: TextStyle(fontSize:25, fontFamily: 'Roboto', fontWeight: FontWeight.bold, color: Colors.green ),)),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('One' , style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.green),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Two' , style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.green),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Three' , style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.green),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Four' , style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.green),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Five', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.green),),
            ),
          ],
        ),
      ),
    );
  }
}

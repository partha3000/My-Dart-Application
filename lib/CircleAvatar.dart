import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle Avatar Page',
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: HomepageScreen(),
    );
  }
}

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Circle Avatar page')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              maxRadius: 40,
              child: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset('images/me.png'),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextStyleView(),
                  ),
                );
              },
              child: Text("Go to Class 3"),
            ),
          ],
        ),
      ),
    );
  }
}
class TextStyleView extends StatelessWidget {
  const TextStyleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Class Page"),
      ),
      body: Center(
        child: Text(
          "This is the 3rd class screen",
          style: TextStyle(
            fontSize: 22,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


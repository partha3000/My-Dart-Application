import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),

      child: Row(
        children: [
          const IconButton(
            onPressed: null,
            icon:Icon(Icons.menu),
            tooltip: 'Navigation menu',
          ),
          Expanded(child: title),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold ({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(title:
          Text(
            'Home Page',
            style: Theme.of(context)
                .primaryTextTheme
                .titleLarge,
          ),
          ),
          const Expanded(child: Center(child: Text('Hello, World!'),))
        ],
      ),
    );
  }
}

void main () {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Apps',
        home: SafeArea(child: MyScaffold()),
      )
  );
}

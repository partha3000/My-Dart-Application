import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Drawer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),

      // SIDE NAVIGATION
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            // PROFILE HEADER
            UserAccountsDrawerHeader(
              accountName: const Text("Partha Majumder"),
              accountEmail: const Text("partha@email.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("images/me.png"),
              ),
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),

            // MENU ITEMS
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          "Welcome Home",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [

          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("images/me.png"),
          ),

          SizedBox(height: 20),

          Text(
            "Partha Majumder",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            "Flutter Developer",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: const Center(
        child: Text(
          "Settings Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

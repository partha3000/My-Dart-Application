import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Portfolio",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Header Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 60, bottom: 30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
              child: Column(
                children: const [

                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/300"),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Partha Majumder",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),

                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // About
            sectionTitle("About Me"),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "I am a Flutter developer passionate about building "
                    "modern mobile applications with beautiful UI and "
                    "smooth performance.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

            const SizedBox(height: 20),

            // Skills
            sectionTitle("Skills"),

            skillBar("Flutter", 0.9),
            skillBar("Dart", 0.85),
            skillBar("Firebase", 0.75),
            skillBar("UI Design", 0.70),

            const SizedBox(height: 20),

            // Projects
            sectionTitle("Projects"),

            projectCard(
              "E-Commerce App",
              "Online shopping app built using Flutter and Firebase.",
            ),

            projectCard(
              "Chat Application",
              "Real-time messaging app using Firebase.",
            ),

            projectCard(
              "Portfolio App",
              "Personal portfolio mobile application.",
            ),

            const SizedBox(height: 20),

            // Social Media
            sectionTitle("Connect With Me"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.facebook, size: 30),
                SizedBox(width: 20),
                Icon(Icons.linked_camera, size: 30),
                SizedBox(width: 20),
                Icon(Icons.web, size: 30),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // Section Title
  static Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blue),
      ),
    );
  }

  // Skill Progress Bar
  static Widget skillBar(String skill, double level) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(skill,
              style:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

          const SizedBox(height: 5),

          LinearProgressIndicator(
            value: level,
            minHeight: 8,
            backgroundColor: Colors.grey[300],
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  // Project Card
  static Widget projectCard(String title, String desc) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.mobile_friendly),
        title: Text(title),
        subtitle: Text(desc),
      ),
    );
  }
}

import 'package:aufgabe_4_5_4/likes_page.dart';
import 'package:aufgabe_4_5_4/news_page.dart';
import 'package:aufgabe_4_5_4/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AppHome());
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  // states (attributes)
  int _currentIndex = 0;
  static const List<Widget> screens = [NewsPage(), LikesPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      // body: NewsPage(),
      // body: LikesPage(),
      body: ProfilePage(),
    );
  }
}

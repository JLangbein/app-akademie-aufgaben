import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('Aufgabe 1')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            HeavyTextWidget(paddingTop: 48.0),
            HeavyTextWidget(paddingTop: 16.0),
            Row(
              children: [
                ColorRect(color: Colors.red, letter: 'A'),
                ColorRect(color: Colors.green, letter: 'B'),
                ColorRect(color: Colors.blue, letter: 'C'),
              ],
            ),
            Row(
              children: [
                ColorRect(color: Colors.red, letter: 'A'),
                ColorRect(color: Colors.green, letter: 'B'),
                ColorRect(color: Colors.blue, letter: 'C'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.face, color: Colors.black, size: 40.0),
                Icon(Icons.face, color: Colors.black, size: 40.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HeavyTextWidget extends StatelessWidget {
  const HeavyTextWidget({super.key, required this.paddingTop});

  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, paddingTop, 8, 4),
      child: Row(
        children: [
          Text(
            'Hallo App Akademie!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class PurpleButton extends StatelessWidget {
  const PurpleButton({super.key, required this.letter});

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Center(
        child: Text(letter, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class ColorRect extends StatelessWidget {
  const ColorRect({super.key, required this.color, required this.letter});

  final Color color;
  final String letter;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(8.0),
      child: Row(
        spacing: 4.0,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
            color: color,
            width: 80.0,
            height: 80.0,
            child: PurpleButton(letter: letter),
          ),
        ],
      ),
    );
  }
}

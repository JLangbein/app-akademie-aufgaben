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
            Container(
              padding: EdgeInsets.fromLTRB(8, 48, 8, 4),
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
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 4.0,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
                        color: Colors.red,
                        width: 80.0,
                        height: 80.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'A',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 4.0,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
                        color: Colors.green,
                        width: 80.0,
                        height: 80.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'B',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 4.0,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
                        color: Colors.blue,
                        width: 80.0,
                        height: 80.0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'C',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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

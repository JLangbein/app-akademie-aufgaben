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
        appBar: AppBar(
          centerTitle: false,
          title: Text('Tut Aufgabe'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsetsGeometry.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hallo Flutter-Entwickler!',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2.0, indent: 8.0, endIndent: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [/* Icons go here */],
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 224, 177),
                  border: BoxBorder.all(color: Colors.orange, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                child: Row(
                  spacing: 8.0,
                  children: [
                    Icon(Icons.info, color: Colors.orange),
                    Text(
                      'Dies ist ein Hinweistext im Container',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
              SubMenu(title: 'Einstellungen', icon: Icons.settings),
              SubMenu(title: 'Datenschuty', icon: Icons.lock),
              SubMenu(title: 'Sprache', icon: Icons.language),
              BottomEntry(),
            ],
          ),
        ),
      ),
    );
  }
}

// class IconWithText extends StatelessWidget {
//   final String text;
//   final Color color;
//   final IconData icon;

//   const IconWithText({
//     super.key,
//     required this.text,
//     required this.color,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       spacing: 8.0,
//       children: [Icon(icon, color, size: 24.0), Text(text)],
//     );
//   }
// }

class SubMenu extends StatelessWidget {
  final String title;
  final IconData icon;

  const SubMenu({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 96.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 16.0,
            children: [
              Icon(icon),
              Text(title, style: TextStyle(fontSize: 18.0)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Icon(Icons.arrow_forward)],
          ),
        ],
      ),
    );
  }
}

class BottomEntry extends StatelessWidget {
  const BottomEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Divider(thickness: 2.0, indent: 8.0, endIndent: 8.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Bereit?', style: TextStyle(fontSize: 18.0)),
              ElevatedButton(
                onPressed: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8.0,
                  children: [Icon(Icons.add), Text('Start')],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

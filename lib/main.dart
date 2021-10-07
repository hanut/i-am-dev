import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const IAmDevApp());
}

class IAmDevApp extends StatelessWidget {
  const IAmDevApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'I Am Dev',
      home: MyHomePage(title: 'I Am Dev'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  static const messages = [
    'I Am Dev',
    'I Am Creator',
    'I Am Darkness',
    'I Am Light',
    'Code 4 Coffee',
    'My Stack Overfloweth',
    'I Am Genius',
    'I Am Tech',
    'I Am Overlord',
    'All Your Code\nIs Belong To\nMe',
    'I Am Banana',
    'Power to the\nProcessor',
    'Develop In Darkness',
    'Too Smart For\nSchool',
  ];

  void _changeMessage() {
    setState(() {
      _currentIndex = Random().nextInt(messages.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff445d7b),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueGrey[900],
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt_sharp),
            tooltip: 'About the app',
            onPressed: () {
              print("Beep boop.");
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: SvgPicture.asset(
                'images/dev.svg',
                semanticsLabel: 'Dev',
                width: 500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                messages[_currentIndex],
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                  height: 1.5,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeMessage,
        tooltip: 'Generate Message',
        child: const Icon(Icons.speaker_notes_sharp),
        backgroundColor: Colors.black54,
      ),
    );
  }
}

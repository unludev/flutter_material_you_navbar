// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Text(
      'eco',
      style: _myTextStyle,
    ),
    Text(
      'home',
      style: _myTextStyle,
    ),
    Text(
      'person',
      style: _myTextStyle,
    ),
    Text(
      'video',
      style: _myTextStyle,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material You'),
        backgroundColor: Colors.teal,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
      ),
      body: Center(child: pages[_currentIndex]),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.white.withOpacity(0.5),
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
        child: NavigationBar(
          backgroundColor: Colors.teal,
          animationDuration: Duration(seconds: 1),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          height: 60,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(Icons.eco),
              icon: Icon(Icons.eco_outlined),
              label: 'eco',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outlined),
              label: 'person',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.video_camera_back),
              icon: Icon(Icons.video_camera_back_outlined),
              label: 'video',
            )
          ],
        ),
      ),
    );
  }
}

const TextStyle _myTextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

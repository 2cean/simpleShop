import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Flutter+Laravel', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Text('Home'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.add, color: Colors.white), label: 'Add'),
        ],
      ),
    );
  }
}
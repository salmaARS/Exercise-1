// Mobile Application Programming (SCSJ3623)
// Semester 2, 2019/2020

// Exercise 1: Basic State Management with Stateful Widgets

// Write your name and your partner's.
// Only one submission is required per pair
// Submit only the source code file (main.dart)

//! Name 1:  Salma Aulia
//! Name 2:  Riziq Fattah R

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'MAP Exercise 1',
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
 @override
 _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
     @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 150.0),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Color'),
        icon: Icon(Icons.color_lens),
      ),
      bottomNavigationBar: SizedBox(
        height: 150.0,
        child: Slider(
          min: 0.0,
          max: 300.0,
          value: 150.0,
          onChanged: (newValue) {},
        ),

      ),
    );
  }
  
}

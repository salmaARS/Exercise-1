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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () { },
          label: Text('Small'),
          icon: Icon(Icons.photo_size_select_small),
         
          ),
          FloatingActionButton.extended(
           onPressed: () {},
            label: Text('Medium'),
            icon : Icon(Icons.photo_size_select_actual),
            backgroundColor: Colors.blue,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Big'),
            icon : Icon(Icons.photo_size_select_large),
            backgroundColor: Colors.blue,
          )],
      ),
      bottomNavigationBar: SizedBox(
        height: 150.0,
        child: Column(
          children: <Widget>[
            Slider(
              min: 0.0,
              max: 300.0,
              value: 0,
              onChanged: (newValue) => {},
            ),

            Slider(
              min: 0.0,
              max: 300.0,
              value: 0,
              onChanged: (newValue) => {},
            ),

          ], 
       
        )   
      )
    );
    
  }
  
}

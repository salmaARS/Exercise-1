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

  
  double _angle = 0.0;
  get angle => _angle;
  set angle(value) => setState(()=> _angle = value);

  double _size = 150.0;
  get size => _size;
  set size(value) => setState(()=> _size = value);


     @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(angle: _angle, child: FlutterLogo(size: _size),)
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () {_size = 50;  
            setState(() {}); },
          label: Text('Small'),
          icon: Icon(Icons.photo_size_select_small),
         
          ),
          FloatingActionButton.extended(
           onPressed: () { _size = 150;
            setState((){});},
            label: Text('Medium'),
            icon : Icon(Icons.photo_size_select_actual),
            backgroundColor: Colors.blue,
          ),
          FloatingActionButton.extended(
            onPressed: () { _size = 300.00;
             setState((){});},
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
              value: size,
              onChanged: (newValue) => size = newValue,
            ),

            Slider(
              min: 0.0,
              max: 360.0,
              value: angle,
              onChanged: (newValue) => angle = newValue,
            ),

          ], 
       
        )   
      )
    );
    
  }
  
}

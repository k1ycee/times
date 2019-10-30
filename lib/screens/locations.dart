import 'package:flutter/material.dart';

class Locations extends StatefulWidget {
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Change Location',
        style: TextStyle(
          color: Colors.amber
        ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(child: Text('YOU WANT A PIECE OF ME',style: TextStyle(color: Colors.black),))
    );
  }
}

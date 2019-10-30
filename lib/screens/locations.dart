import 'package:flutter/material.dart';

class Locations extends StatefulWidget {
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Change Location',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Text('YOU WANT A PIECE OF ME')
    );
  }
}

import 'package:flutter/material.dart';
import 'package:times/screens/locations.dart';
import 'package:times/screens/home_screen.dart';
import 'package:times/screens/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => Loads(),
    '/home':(context) => Home(),
    '/locate':(context) => Locations()
  },
));

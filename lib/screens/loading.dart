import 'package:flutter/material.dart';
import 'package:times/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loads extends StatefulWidget {
  @override
  _LoadsState createState() => _LoadsState();
}

class _LoadsState extends State<Loads> {



  void timing () async{
    WorldTime timer = WorldTime(location: 'Nigeria',flag: 'nigeria.png',url: 'Africa/Lagos');
    await timer.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': timer.location, 'flag': timer.flag, 'time': timer.time
    });

  }

  @override
  void initState() {
    super.initState();
    timing();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body:
      Center(
          child: SpinKitRing(
            color: Colors.white,
            size: 90.0,
          ),
      )
    );
  }
}

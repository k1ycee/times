import 'package:flutter/material.dart';
import 'package:times/services/world_time.dart';

class Loads extends StatefulWidget {
  @override
  _LoadsState createState() => _LoadsState();
}

class _LoadsState extends State<Loads> {

  String tell = 'Give me sec let me check the world clock';

  void timing () async{
    WorldTime timer = WorldTime(location: 'Nigeria',flag: 'nigeria.png',url: 'Africa/Lagos');
    await timer.getTime();
    print(timer.time);
    setState(() {
      tell = timer.time;
    });
  }

  @override
  void initState() {
    super.initState();
    timing();
    print('am always first');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child:
          Center(
            child: Text(' $tell time right now',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            ),
          )
      ),
    );
  }
}

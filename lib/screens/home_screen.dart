import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    data = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                child: FlatButton.icon(
                  icon: Icon(Icons.edit_location),
                  label: Text('Change Location'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/locate');
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Text(
                data['time'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 68.0,
                  ),
                ),
                  ],
              ),
            ],
          ),
      ),
    );
  }
}

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
    Color bgcolor = data['dayNight'] ? Colors.blue[200] : Colors.indigo;
    Text text = data['dayNight'] ? Text ('Evening') : Text ('Morning');
    
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 75.0),
        child: SafeArea(
            child: Column(
              children: <Widget>[
                Center(
                  child: FlatButton.icon(
                    icon: Icon(Icons.edit_location,
                    color: Colors.grey[300],
                      ),
                    label: Text(
                        'Change Location',
                    style: TextStyle(color: Colors.grey[200])),
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
                        color: Colors.white  ,
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
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Text('$text',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    ),
                  ],
                )
              ],
            ),
        ),
      ),
    );
  }
}

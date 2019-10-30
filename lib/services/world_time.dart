import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location,this.flag,this.url});

  Future <void> getTime() async{
    try{ Response res = await get ('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(res.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
//    print(datetime);
//    print(offset);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
//    print(now);
    time = now.toString();}
    catch(e){
      print ('There is an error somewhere: $e');
      time = 'I think i cant find the time';
    }
  }

}
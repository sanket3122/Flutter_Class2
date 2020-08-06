import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

String x;

web() async {
  var url = "http://192.168.99.101/cgi-bin/${x}.py";
  // print("url");
  var r = await http.get(url);
  var data = r.body;
  print(data);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inpute App"),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 250,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    onChanged: (value) => {x = value},
                    autofocus: true,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      // border: OutlineInputBorder(),
                      hintText: 'Command',
                    ),
                  ),
                  //
                ),
                Card(
                  child: FlatButton(
                      onPressed: () => {web()}, child: Text("Press")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

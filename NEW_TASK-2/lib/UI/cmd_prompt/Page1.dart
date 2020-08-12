import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String cmd;
var data1;
web(cmd) async {
  var url = "http://192.168.43.169/cgi-bin/docker.py?x=${cmd}";
  // print("url");
  var r = await http.get(url);
  var data1 = r.body;
  print(data1);
}

class Cmd_prompt extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Docker App"),
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
                    onChanged: (value) => {cmd = value},
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
                      onPressed: () => {
                            web(cmd),
                          },
                      child: Text("Press")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

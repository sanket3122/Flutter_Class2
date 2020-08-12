import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cmd_prompt extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _Cmd_promptState createState() => _Cmd_promptState();
}

class _Cmd_promptState extends State<Cmd_prompt> {
  @override
  String cmd;
  var data1;
  web(cmd) async {
    var url = "http://192.168.43.169/cgi-bin/docker.py?x=${cmd}";
    // print("url");
    var r = await http.get(url);
    setState(() {
      data1 = r.body;
    });
    print(data1);
  }

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
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height * 0.85,
            color: Colors.grey.shade200,
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 15,
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
                    child: Text("Press"),
                  ),
                ),
                Text("Output of Command: ",
                    style: TextStyle(color: Colors.purple)),
                Text(
                  data1 ?? " ",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

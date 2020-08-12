import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page1_1 extends StatefulWidget {
  @override
  _Page1_1State createState() => _Page1_1State();
}

class _Page1_1State extends State<Page1_1> {
  @override
  String data1;
  web() async {
    var url = "http://192.168.43.169/cgi-bin/ps.py";
    // print("url");
    var r = await http.get(url);
    setState(() {
      data1 = r.body;
    });
    print(data1);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("1_Page 1"),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Card(
                  child: FlatButton(
                      onPressed: () => {
                            web(),
                          },
                      child: Text("Press")),
                ),
                Text("Output of Command: \n",
                    style: TextStyle(color: Colors.purple)),
                Text(
                  data1 ?? " ",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

web() async {
  var url = "http://192.168.43.169/cgi-bin/ps.py";
  // print("url");
  var r = await http.get(url);
  var data1 = r.body;
  print(data1);
}

class Page1_1 extends StatelessWidget {
  @override
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
              ],
            ),
          ),
        ));
  }
}

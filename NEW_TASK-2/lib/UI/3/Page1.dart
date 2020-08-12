import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page3_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String a;
    String b;
    return Scaffold(
      appBar: AppBar(
        title: Text("3_Page 1"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.grey.shade300,
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  a = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter ur Docker OS name",
                  prefixIcon: Icon(Icons.tablet_android),
                ),
              ),
              TextField(
                onChanged: (value) {
                  b = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter image name",
                  prefixIcon: Icon(Icons.tablet_android),
                ),
              ),
              FlatButton(
                  onPressed: () async {
                    var url =
                        "http://192.168.43.169/cgi-bin/run.py?x=${a}&y=${b}";
                    var response = await http.get(url);
                    print(response.body);
                  },
                  child: Text('click here')),
            ],
          ),
        ),
      ),
    );
  }
}

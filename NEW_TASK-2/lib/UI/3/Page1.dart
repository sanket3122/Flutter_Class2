import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page3_1 extends StatefulWidget {
  @override
  _Page3_1State createState() => _Page3_1State();
}

class _Page3_1State extends State<Page3_1> {
  @override
  Widget build(BuildContext context) {
    String a;
    String b;
    String data1;
    return Scaffold(
      appBar: AppBar(
        title: Text("3_Page 1"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          color: Colors.grey.shade200,
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
                    setState(() {
                      data1 = response.body;
                    });
                    print(data1);
                  },
                  child: Text('click here')),
              Text("Output of Command: \n",
                  style: TextStyle(color: Colors.purple)),
              Text(
                data1 ?? " ",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page2_1 extends StatefulWidget {
  @override
  _Page2_1State createState() => _Page2_1State();
}

class _Page2_1State extends State<Page2_1> {
  @override
  String data1;
  web() async {
    var url = "http://192.168.43.169/cgi-bin/images.py";
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
          title: Text("2_Page 1"),
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
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
          ),
        ));
  }
}

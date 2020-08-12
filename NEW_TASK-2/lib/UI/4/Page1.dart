import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/*
web(osname, imagename) async {
  var url = "http://192.168.43.169/cgi-bin/run.py?x=$osname&y=$imagename";
  var response = await http.get(url);
  print(response.body);
}
*/
class Page4_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String x;
    String y;
    return Scaffold(
      appBar: AppBar(
        title: Text("4_Page 1"),
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
                  x = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter which u want to delete",
                  prefixIcon: Icon(Icons.tablet_android),
                ),
              ),
              FlatButton(
                  onPressed: () async {
                    var url = "http://192.168.43.169/cgi-bin/rm.py?x=${x}";
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

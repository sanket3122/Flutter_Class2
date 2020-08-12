import 'package:flutter/material.dart';
import '1/Page1.dart';
import '2/Page1.dart';
import '3/Page1.dart';
import '4/Page1.dart';
import '5/Page1.dart';
import 'cmd_prompt/Page1.dart';

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text("Welcome In Docker App"),
        automaticallyImplyLeading: false,
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  padding: const EdgeInsets.all(15.0),
                    textColor: Colors.white,
                    color: Colors.pink.shade700,
                    child: Text(
                      'Command',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cmd_prompt()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  padding: const EdgeInsets.all(15.0),
                    textColor: Colors.white,
                    color: Colors.pink.shade700,
                    child: Text(
                      'List',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1_1()),
                      );
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  padding: const EdgeInsets.all(15.0),
                    textColor: Colors.white,
                    color: Colors.pink.shade700,
                    child: Text(
                      'Images',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2_1()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  padding: const EdgeInsets.all(15.0),
                    textColor: Colors.white,
                    color: Colors.pink.shade700,
                    child: Text(
                      'Run',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3_1()),
                      );
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  padding: const EdgeInsets.all(15.0),
                    textColor: Colors.white,
                    color: Colors.pink.shade700,
                    child: Text(
                      'rm -f',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page4_1()),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  padding: const EdgeInsets.all(15.0),
                    textColor: Colors.white,
                    color: Colors.pink.shade700,
                    child: Text(
                      'exec',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page5_1()),
                      );
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  padding: const EdgeInsets.all(15.0),
                    textColor: Colors.white,
                    color: Colors.pink.shade700,
                    child: Text(
                      'Push',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1_1()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

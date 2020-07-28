import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp1() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.pink);

  var url =
      'https://raw.githubusercontent.com/sanket3122/Flutter_Class2/master/Pic_02-26-01.18.48.jpg';

  press2() {
    Fluttertoast.showToast(
        msg: "This is Sanket !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  press1() {
    print("ADD A PHOTO");
  }

  var mybody = Container(
    alignment: Alignment.center,
    color: Colors.grey.shade300,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.pink.shade400,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(50),
          height: 180,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SANKET BENDALE",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    "  sanket@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.pink.shade400,
              width: 3,
            ),
            color: Colors.pink.shade400,
          ),
          height: 100,
          width: 100,
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Business Profile"),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: press1),
          IconButton(icon: Icon(Icons.add_circle), onPressed: press2),
        ],
      ),
      body: mybody,
    ),
  );
}

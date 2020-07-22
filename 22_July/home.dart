import 'package:flutter/material.dart';

home() {
  var mytitle = Text(
    "My First App",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  my_press1() {
    print("Something Clicked for Home...");
  }

  my_press2() {
    print("Something Clicked for Email...");
  }

  var My_IMG_URL =
      'https://raw.githubusercontent.com/sanket3122/Flutter_Class2/master/Pic_02-26-01.18.48.jpg';

  var My_IMG = Image.network(
    My_IMG_URL,
    width: double.infinity,
    height: double.infinity,
  );

  var My_Home_Icon = Icon(
    Icons.home,
    color: Colors.black,
  );

  var My_Email_Icon = Icon(
    Icons.email,
    color: Colors.black,
  );

  var My_Home_Button = IconButton(icon: My_Home_Icon, onPressed: my_press1());

  var My_Email_Button = IconButton(icon: My_Email_Icon, onPressed: my_press2());

  var my_appbar = AppBar(
    title: mytitle,
    backgroundColor: Colors.pink,
    leading: My_Home_Icon,
    actions: <Widget>[
      My_Email_Icon,
    ],
  );

  var myhome = Scaffold(
    appBar: my_appbar,
    body: My_IMG,
    backgroundColor: Colors.blueAccent.shade200,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}

import 'package:flutter/material.dart';

home() {
  var My_Body = Container(
    height: 300,
    width: 300,
    // color: Colors.blue[800],
    alignment: Alignment.bottomCenter,
    child: Text(
      'Sanket Bendale',
      style: TextStyle(
          color: Colors.black,
          backgroundColor: Colors.grey.shade300,
          fontWeight: FontWeight.bold,
          fontSize: 24),
    ),

    decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://raw.githubusercontent.com/sanket3122/Flutter_Class2/master/Pic_02-26-01.18.48.jpg'),
          fit: BoxFit.cover,
        ),
        //color: Colors.black,

        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey.shade800,
          width: 5,
        )),
  );
  var home = Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.pink,
      ),
      body: Center(child: My_Body),
      backgroundColor: Colors.green.shade300);

  var design = MaterialApp(
    home: home,
    debugShowCheckedModeBanner: false,
  );

  return design;
}

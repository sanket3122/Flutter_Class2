import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'UI/home.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: new SplashScreen(
        title: new Text(
          'Welcome In Docker App',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        seconds: 8,
        navigateAfterSeconds: AfterSplash(),
        image: new Image.asset('assets/docker.gif'),

        backgroundColor: Colors.blue.shade50,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 170.0,
        // onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.black,
      ),
    );
  }
}

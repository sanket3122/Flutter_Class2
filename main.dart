import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:folder_picker/folder_picker.dart';
//import 'package:video_player/video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  // mybody() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Music App"),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Image.asset("assets/sanket.jpg"),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("Play");
            var a = AudioCache();
            a.play('on_my_way.mp3');
          },
          label: Text('Music'),
          icon: Icon(Icons.music_note),
          backgroundColor: Colors.pink, 
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.music_video,
                  color: Colors.lightBlue.shade400,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle),
              )
            ],
            backgroundColor: Colors.red.shade900,
            title: Text('Musichaska'),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blueAccent.shade100,
            margin: EdgeInsets.all(30),
            child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 500,
                  height: 500,
                  child: RaisedButton(
                      onPressed: () {
                        print('click me');
                        var audio = AudioCache();
                        audio.play('audio.dil_bechara.mp3');
                      },
                      child: Card(
                          color: Colors.white,
                          child: Text("Dil Bechara"),
                          elevation: 5)),
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    width: 600,
                    height: 600,
                    color: Colors.blue.shade900,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.1)
                      ..rotateX(0.1)),
                Container(
                  width: 500,
                  height: 30,
                  color: Colors.amberAccent.shade200,
                  child: Text(
                    'WELCOME TO MUSICHASKA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900),
                  ),
                  transform: Matrix4.rotationZ(-0.1),
                ),
                Container()
              ],
            ),
          ),
        ));
  }
}

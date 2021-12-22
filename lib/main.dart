import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatelessWidget {
  void playmusic( int musicNumber) {
final player = AudioCache();
player.play('assets_music-$musicNumber.mp3');
  }

  Expanded myButton({ required int musicNumber, required Color buttonColor, required String buttonText}){
     return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom : 1),
                child: ElevatedButton( style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                  playmusic(musicNumber);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left : 20),
                  child: Row(
                    children: [
                      Icon(Icons.music_note,
                      color: buttonColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(buttonText , 
                      style: TextStyle(
                        fontSize: 20 , 
                        color: buttonColor,
                      ),
                      ),
                    ],
                  ),
                ),
                ),
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        backgroundColor: Colors.deepPurple[50],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[100],
          title: Text("Piano Music" , style: TextStyle(fontSize: 20 , color: Colors.white , shadows: [
            Shadow( color: Colors.deepPurpleAccent , offset: Offset(2.0 ,2.0) , blurRadius: 10)
          ]),),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(musicNumber : 1 , buttonColor : Colors.deepPurple ,buttonText :' Piano Brand Motive Logo'),
            myButton(musicNumber: 2 , buttonColor : Colors.grey , buttonText :' Inspiring Cinematic '),
            myButton(musicNumber: 3 ,buttonColor : Colors.deepPurple , buttonText :' Light Step '),
            myButton(musicNumber: 4 ,buttonColor : Colors.grey ,buttonText : ' Classic Piano Loop in A-Minor'),
            myButton(musicNumber: 5 ,buttonColor : Colors.deepPurple , buttonText :' Joy Piano with clap '),
            myButton(musicNumber: 6 ,buttonColor : Colors.grey , buttonText :' Jingle '),
            myButton(musicNumber: 7 ,buttonColor : Colors.deepPurple , buttonText :' Piano Intro - Outro'),
          ],
        ),
      ),
    );
  }
}
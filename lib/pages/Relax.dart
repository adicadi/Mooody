import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Relax extends StatefulWidget {
  @override
  _RelaxState createState() => _RelaxState();
}

class _RelaxState extends State<Relax> {
  AudioPlayer audioplayer = AudioPlayer();

  Duration totalDuration;
  Duration position;
  String audioState;

  audioInit() {
    audioplayer.onDurationChanged.listen((updatedDuration) {
      setState(() {
        totalDuration = updatedDuration;
      });
    });

    audioplayer.onAudioPositionChanged.listen((updatedPosition) {
      setState(() {
        position = updatedPosition;
      });
    });
  }

  @override
  void initState() {
    audioInit();
    super.initState();
  }

  audioPlay() {
    audioplayer.play(
        'https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Ambient%2Frelax.mp3?alt=media&token=ab553dd8-d17f-4b8c-b2f8-061bbb3f81a0');
  }

  audioPause() {
    audioplayer.pause();
  }

  audioStop() {
    audioplayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'mooody',
          style: TextStyle(color: HexColor('#f15944')),
        ),
        centerTitle: true,
        leading: BackButton(
          color: HexColor('#f15944'),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 60, 20, 40),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.0, 0.0), //(x,y)
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                        child: Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Ambient%2FRelax.png?alt=media&token=7f83f565-3455-4b49-bb31-2554587f8f91",
                          fit: BoxFit.cover,
                          height: 600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 600, 0, 0),
                    child: Container(
                      height: 100,
                      width: 280,
                      child: Material(
                        borderRadius: BorderRadius.circular(35),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                              child: FloatingActionButton(
                                onPressed: () {
                                  audioPlay();
                                },
                                child: Icon(
                                  Icons.play_arrow,
                                  color: HexColor('f15944'),
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
                              child: FloatingActionButton(
                                onPressed: () {
                                  audioStop();
                                },
                                child: Icon(
                                  Icons.stop,
                                  color: HexColor('f15944'),
                                ),
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

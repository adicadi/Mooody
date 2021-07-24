import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:hexcolor/hexcolor.dart';

class Uplifting extends StatefulWidget {
  Uplifting({Key key}) : super(key: key);

  @override
  _UpliftingState createState() => _UpliftingState();
}

class _UpliftingState extends State<Uplifting> {
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
        'https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Ambient%2FUplifting.mp3?alt=media&token=bc920d08-c41d-4fb8-b303-02df62f09770');
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
                          "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Ambient%2Fuplifting.png?alt=media&token=e6e25a4d-aa89-4a82-ad28-dfd2c0bdaded",
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

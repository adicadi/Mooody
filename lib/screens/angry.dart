import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mooody/Widgets/angrymovies.dart';
import 'package:mooody/Widgets/angrysongs.dart';

class Angry extends StatefulWidget {
  Angry({Key key}) : super(key: key);

  @override
  _AngryState createState() => _AngryState();
}

class _AngryState extends State<Angry> {
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AngryMovies(),
              AngrySongs(),
            ],
          ),
        ),
      ),
    );
  }
}

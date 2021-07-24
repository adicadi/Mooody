import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mooody/Widgets/sadsongs.dart';
import 'package:mooody/Widgets/sadmovies.dart';

class Sad extends StatefulWidget {
  Sad({Key key}) : super(key: key);

  @override
  _SadState createState() => _SadState();
}

class _SadState extends State<Sad> {
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
              SadMovies(),
              SadSongs(),
            ],
          ),
        ),
      ),
    );
  }
}

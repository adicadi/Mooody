import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mooody/Widgets/lonelymovies.dart';
import 'package:mooody/Widgets/lonelysongs.dart';

class Lonely extends StatefulWidget {
  Lonely({Key key}) : super(key: key);

  @override
  _LonelyState createState() => _LonelyState();
}

class _LonelyState extends State<Lonely> {
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
              LonelyMovies(),
              LonelySongs(),
            ],
          ),
        ),
      ),
    );
  }
}

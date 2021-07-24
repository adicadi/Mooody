import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mooody/Widgets/cheerfulsongs.dart';
import 'package:mooody/Widgets/cheerfulmovies.dart';

class Cheerful extends StatefulWidget {
  Cheerful({Key key}) : super(key: key);

  @override
  _CheerfulState createState() => _CheerfulState();
}

class _CheerfulState extends State<Cheerful> {
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
              CheerfulMovies(),
              CheerfulSongs(),
            ],
          ),
        ),
      ),
    );
  }
}

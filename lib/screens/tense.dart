import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mooody/Widgets/tensesongs.dart';
import 'package:mooody/Widgets/tensemovies.dart';

class Tense extends StatefulWidget {
  Tense({Key key}) : super(key: key);

  @override
  _TenseState createState() => _TenseState();
}

class _TenseState extends State<Tense> {
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
              TenseMovies(),
              TenseSongs(),
            ],
          ),
        ),
      ),
    );
  }
}

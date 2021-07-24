import 'package:flutter/material.dart';
import 'package:mooody/Widgets/faq.dart';
import 'package:hexcolor/hexcolor.dart';

class MoodSelection extends StatefulWidget {
  MoodSelection({Key key}) : super(key: key);

  @override
  _MoodSelectionState createState() => _MoodSelectionState();
}

class _MoodSelectionState extends State<MoodSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'mooody',
          style: TextStyle(
            color: HexColor('#f15944'),
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          color: HexColor('#f15944'),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Faq(),
          ],
        ),
      ),
    );
  }
}

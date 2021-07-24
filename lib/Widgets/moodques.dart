import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mooody/screens/Cheerful.dart';
import 'package:mooody/screens/angry.dart';
import 'package:mooody/screens/lonely.dart';
import 'package:mooody/screens/sad.dart';
import 'package:mooody/screens/tense.dart';

class MoodQues extends StatelessWidget {
  const MoodQues({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 8, 1),
          child: Text(
            'How are you feeling\ntoday !',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: HexColor('#266a68'),
              fontSize: 24,
              height: 1.6,
              letterSpacing: 1,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 2, 30, 2),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cheerful(),
                    ),
                  );
                },
                child: Text(
                  'Cheerful',
                  style: TextStyle(color: HexColor('f15944'), fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 2, 60, 2),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tense(),
                    ),
                  );
                },
                child: Text(
                  'Tense',
                  style: TextStyle(color: HexColor('f15944'), fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 30, 2),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sad(),
                    ),
                  );
                },
                child: Text(
                  'Sad',
                  style: TextStyle(color: HexColor('f15944'), fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 2, 30, 2),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Angry(),
                    ),
                  );
                },
                child: Text(
                  'Angry',
                  style: TextStyle(color: HexColor('f15944'), fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 2, 5, 2),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lonely(),
                    ),
                  );
                },
                child: Text(
                  'Lonely',
                  style: TextStyle(color: HexColor('f15944'), fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        // Answer(),
      ],
    );
  }
}

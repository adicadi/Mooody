import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class AngrySongs extends StatelessWidget {
  String _levitating = "https://www.youtube.com/watch?v=TUVcZfQe-Kw";
  String _linkin = "https://www.youtube.com/watch?v=eVTXPUF4Oz4";
  String _astronaut = "https://www.youtube.com/watch?v=MEg-oqI9qmw";
  String _theway = "https://www.youtube.com/watch?v=mQvteoFiMlg";

  Future<void> _launchInYoutube(String url) async {
    if (!url.contains('http')) url = 'https://$url';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'songs you\'d like',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: HexColor('a3d3cb'),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'based on your mood',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: HexColor('266a68'),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fangry%2FLevitating.png?alt=media&token=fc8dd7bd-c092-493a-a41e-5fcc4183837b",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_levitating);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fangry%2FLinkinParkIntheEnd.jpg?alt=media&token=51ecaebc-267d-44dc-b0f5-83f1060fc5f3",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_linkin);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fangry%2Fastronaut.jpg?alt=media&token=83b3d4fb-27a1-4ce6-acff-c36030ae3892",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_astronaut);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fangry%2FtheWayIam.jpg?alt=media&token=7e794d6f-7a03-4d9d-983d-0c562057fa8e",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_theway);
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

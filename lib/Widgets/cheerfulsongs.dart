import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class CheerfulSongs extends StatelessWidget {
  String _happy = "https://www.youtube.com/watch?v=ZbZSe6N_BXs";
  String _unwritten = "https://www.youtube.com/watch?v=b7k0a5hYnSI";
  String _lovely = "https://www.youtube.com/watch?v=bEeaS6fuUoA";
  String _prince = "https://www.youtube.com/watch?v=aXJhDltzYVQ";

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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fcheerful%2Fhappy.jpg?alt=media&token=a2a1513e-9f59-4c3b-a70b-b3169283b67d",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_happy);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fcheerful%2Funwritten.jpg?alt=media&token=4f727a7f-889c-40d0-815c-97c0ea7d86f7",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_unwritten);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fcheerful%2FLovely_Day.jpeg?alt=media&token=3efc1a2b-11ae-4a1c-a5c2-42c37671fb06",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_lovely);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fcheerful%2Fprince.jpg?alt=media&token=13c1c62d-1319-4fa6-8d9b-2e89464ed857",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_prince);
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

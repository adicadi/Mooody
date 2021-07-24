import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class CheerfulMovies extends StatelessWidget {
  //Future<void> _launched;
  String _pursuit = "https://www.youtube.com/watch?v=DMOBlEcRuw8";
  String _inside = "https://www.youtube.com/watch?v=yRUAzGQ3nSY";
  String _schoolrock = "https://www.youtube.com/watch?v=TExoc0MG4I4";
  String _lalaland = "https://www.youtube.com/watch?v=0pdqf4P9MB8";

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
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'movies you\'d like',
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
                  Column(
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fcheerful%2Fthepursuitofhappyness.jpg?alt=media&token=a2d724d9-0267-4770-ba9c-3e12d2ee95d9",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_pursuit);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fcheerful%2FInside_out.jpg?alt=media&token=8177878e-4025-4635-b271-a855d12c47fe",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_inside);
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fcheerful%2Fschoolofrock.jpg?alt=media&token=7211beaa-5299-4f2b-a4c2-07aa2689ee5b",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_schoolrock);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fcheerful%2Flalaland.jpg?alt=media&token=ea264c8a-f8f1-4617-a23a-783834d01707",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_lalaland);
                            },
                          ),
                        ),
                      ),
                    ],
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

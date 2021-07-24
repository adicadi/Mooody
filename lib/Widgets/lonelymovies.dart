import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class LonelyMovies extends StatelessWidget {
  //Future<void> _launched;
  String _despicable = "https://www.youtube.com/watch?v=zzCZ1W_CUoI";
  String _harry = "https://www.youtube.com/watch?v=VyHV0BRtdxo";
  String _rock = "https://www.youtube.com/watch?v=TExoc0MG4I4";
  String _toy = "https://www.youtube.com/watch?v=v-PjgYDrg70";

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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Flonely%2Fdespicableme.jpg?alt=media&token=72335722-b752-433d-a3cf-071a86fd8ef6",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_despicable);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Flonely%2Fharrypotter.jpeg?alt=media&token=aaee8a69-5a45-4013-9cf1-8ce78af90517",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_harry);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Flonely%2Fschoolofrock.jpg?alt=media&token=32cf0957-d70a-4f47-b42a-82ee05a4a709",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_rock);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Flonely%2Ftoystory.jpg?alt=media&token=184da109-9671-4f2a-988b-eb3cab1c8b0d",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_toy);
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

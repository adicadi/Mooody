import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class AngryMovies extends StatelessWidget {
  //Future<void> _launched;
  String _mile = "https://www.youtube.com/watch?v=axGVrfwm9L4";
  String _inception = "https://www.youtube.com/watch?v=Qwe6qXFTdgc";
  String _shutter = "https://www.youtube.com/watch?v=v8yrZSkKxTA";
  String _titanic = "https://www.youtube.com/watch?v=CHekzSiZjrY";

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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fangry%2F8mile.jpg?alt=media&token=c3fa3dc6-38e3-4718-89b5-6a734702ad2f",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_mile);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fangry%2FInception.jpg?alt=media&token=b8f94246-c4c2-40f4-af5d-fcb1ce3da679",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_inception);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fangry%2FShutter_island.jpg?alt=media&token=67aea0f8-9372-4548-b5a7-09a513b13ce7",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_shutter);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fangry%2FTitanic.png?alt=media&token=e0d30f58-2be3-4a39-b55e-63a8978ed551",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_titanic);
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

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class TenseMovies extends StatelessWidget {
  //Future<void> _launched;
  String _hours = "https://www.youtube.com/watch?v=sHkh34UkWTY";
  String _inside = "https://www.youtube.com/watch?v=yRUAzGQ3nSY";
  String _perks = "https://www.youtube.com/watch?v=2vb2qrcPEEs";
  String _chinatown = "https://www.youtube.com/watch?v=p39LFdGI-YA";

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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Ftense%2F127_hours.jpg?alt=media&token=7c6c5e67-f869-4356-9324-10ea7d484c6f",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_hours);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Ftense%2FPerks_wallflower.jpg?alt=media&token=00bb3261-5003-40c7-a32f-9a15f9e23efb",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_perks);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Ftense%2FChinatown.jpg?alt=media&token=acc872a4-3c55-45a6-b86e-6a2d25922649",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_chinatown);
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

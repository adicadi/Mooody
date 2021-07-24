import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SadMovies extends StatelessWidget {
  //Future<void> _launched;
  String _hitman = "https://www.youtube.com/watch?v=IpKmt4MpctM";
  String _shazam = "https://www.youtube.com/watch?v=go6GEIrcvFY";
  String _sonic = "https://www.youtube.com/watch?v=szby7ZHLnkA";
  String _tag = "https://www.youtube.com/watch?v=kjC1zmZo30U";

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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fsad%2FHitman_Bodyguard.jpg?alt=media&token=7ac0217a-8705-4b35-bddb-27e6641543fa",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_hitman);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fsad%2FShazam.jpg?alt=media&token=eee91029-851b-4dda-9a5f-c0752d10bb80",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_shazam);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fsad%2FSonic.jpg?alt=media&token=287242a8-9e7f-41da-a568-e22a8c8226bd",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_sonic);
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
                                "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Movie_Posters%2Fsad%2FTag.png?alt=media&token=1282985e-0d76-4df7-b4b3-8d8ad6cfb479",
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            ),
                            onTap: () {
                              _launchInYoutube(_tag);
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

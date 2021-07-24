import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SadSongs extends StatelessWidget {
  String _arms = "https://www.youtube.com/watch?v=tLNOce4Y4uc";
  String _falling = "https://www.youtube.com/watch?v=olGSAVOkkTI";
  String _seeyou = "https://www.youtube.com/watch?v=RgKAFK5djSk";
  String _calum = "https://www.youtube.com/watch?v=q31tGyBJhRY";

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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fsad%2Farms.png?alt=media&token=d02c832a-51f7-4acd-bdd7-9789b94e9942",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_arms);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fsad%2Ffalling.jpg?alt=media&token=4d9f2a54-167d-4c60-aef7-e7ae5ad104d5",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_falling);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fsad%2Fseeyouagain.png?alt=media&token=c2c425fa-50e2-47a3-9ddb-b5bd01af562e",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_seeyou);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Fsad%2Fcalumscott.jpg?alt=media&token=a058a25b-bfc3-4cec-ad31-434ff4cf9b4e",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_calum);
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

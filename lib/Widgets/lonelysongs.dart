import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class LonelySongs extends StatelessWidget {
  String _blower = "https://www.youtube.com/watch?v=5YXVMCHG-Nk";
  String _land = "https://www.youtube.com/watch?v=GmEyLWHlrWA";
  String _outside = "https://www.youtube.com/watch?v=IAeicVet6SU";
  String _alone = "https://www.youtube.com/watch?v=KU8HiNPiGZc";

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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Flonely%2Fblower.jpg?alt=media&token=62ea8342-2fae-4154-96c1-ef7ced96a28d",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_blower);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Flonely%2Fland.jpg?alt=media&token=c6fcfce9-c943-4a98-ae13-2aaa1286bbcc",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_land);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Flonely%2Foutside.jpg?alt=media&token=5884adb6-f692-495d-9277-2f1cbf5389c5",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_outside);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Flonely%2Fyouarealone.jpg?alt=media&token=e87be098-53aa-420c-91d1-8bdf6a9d85a9",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_alone);
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

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class TenseSongs extends StatelessWidget {
  String _home = "https://www.youtube.com/watch?v=HoRkntoHkIE";
  String _mygirl = "https://www.youtube.com/watch?v=qEztui18cA8";
  String _ladygaga = "https://www.youtube.com/watch?v=en2D_5TzXCA";
  String _onerepublic = "https://www.youtube.com/watch?v=8wGN7D03Nho";

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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Ftense%2Fhome.jpg?alt=media&token=90c2bfa3-a1b7-403e-8401-3ca94f8b0ee3",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_home);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Ftense%2Fmygirl.jpeg?alt=media&token=5fb465a5-00cc-4357-81e3-649e33b86921",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_mygirl);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Ftense%2Fladygaga.jpg?alt=media&token=0276d084-b75f-4751-99aa-0c1be0fff107",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_ladygaga);
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
                            "https://firebasestorage.googleapis.com/v0/b/mental-f7c92.appspot.com/o/Songs%2Ftense%2Fonerepublic.jpg?alt=media&token=0acb88e1-48d2-49a9-9db5-e9bd63432ee1",
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                        onTap: () {
                          _launchInYoutube(_onerepublic);
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

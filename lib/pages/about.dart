import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mooody/portfolio/aditya.dart';
import 'package:mooody/portfolio/arpit.dart';
import 'package:mooody/portfolio/yash.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'THE TEAM',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          InkWell(
                            child: Container(
                              height: 90,
                              width: 90,
                              margin: EdgeInsets.fromLTRB(8, 20, 8, 8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.amber.shade50, width: 2),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/portfolio/adicadi.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Aditya(),
                                ),
                              );
                            },
                          ),
                          Text(
                            'ADITYA CHAUDHARY',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              color: HexColor('f15944'),
                            ),
                          ),
                          Text(
                            'Android App Development',
                            style: TextStyle(fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 120,
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              height: 90,
                              width: 90,
                              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.amber.shade50, width: 2),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/portfolio/johnwick.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Yash()));
                            },
                          ),
                          Text(
                            'YASH GARG',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              color: HexColor('f15944'),
                            ),
                          ),
                          Text(
                            'Data Science | Web Development',
                            style: TextStyle(fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 120,
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              height: 90,
                              width: 90,
                              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.amber.shade50, width: 2),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/portfolio/glitch.jpeg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Arpit()));
                            },
                          ),
                          Text(
                            'ARPIT MASIH',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              color: HexColor('f15944'),
                            ),
                          ),
                          Text(
                            'UX/UI Design',
                            style: TextStyle(fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 120,
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

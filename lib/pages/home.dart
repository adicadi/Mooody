import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:mooody/pages/about.dart';
import 'dart:async';
import 'dart:convert';

//import 'package:mooody/pages/articlecontent.dart';
import 'package:mooody/screens/detailarticle.dart';
import 'package:mooody/screens/moods.dart';
import 'package:mooody/Widgets/moodques.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // ignore: todo
    //TODO: implement initState
    super.initState();
    getJSONData();
  }

  List data;

  //String url;

  Future<String> getJSONData() async {
    var jsondata = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=mental+health+therapy+wellness+wellbeing&apiKey=4bce59b181cd4c7a82f93b04efa8cd59'));
    var fetchdata = jsonDecode(jsondata.body);
    setState(() {
      data = fetchdata["articles"];
    });
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 40, 8, 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.13,
                //child: Card(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: InkWell(
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/images/logo.png'),
                            ),
                            onDoubleTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => About(),
                                ),
                              );
                            },
                          ),
                        ),
                        Text(
                          'mooody',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: HexColor('f15944')),
                        ),
                      ],
                    ),
                  ],
                ),
                //),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 1, 10, 2),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                //child: Row(
                // children: [
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
                  child: MoodQues(),
                ),
                //],
                //),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: Card(
                color: HexColor('f15944'),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
                      child: Text(
                        'Self checkup',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: OpenContainer(
                        openColor: Colors.white,
                        closedColor: Colors.white,
                        closedElevation: 0,
                        openElevation: 10,
                        transitionDuration: const Duration(milliseconds: 250),
                        transitionType: ContainerTransitionType.fade,
                        closedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        closedBuilder: (BuildContext c, VoidCallback action) =>
                            FloatingActionButton(
                          child: const Icon(Icons.arrow_forward_ios),
                          elevation: 100,
                          foregroundColor: HexColor('f15944'),
                          backgroundColor: Colors.white,
                          mini: true,
                          onPressed: () => action(),
                        ),
                        openBuilder: (BuildContext c, VoidCallback action) =>
                            MoodSelection(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Text(
                      'Top articles for today',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor('#266a68'),
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: true,
                      //textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: new Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailArticle(
                              newsUrl: data[index]["url"],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Container(
                              height: 130,
                              width: MediaQuery.of(context).size.width,
                              child: Material(
                                borderRadius: BorderRadius.circular(10),
                                elevation: 5,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 10, 2),
                                      child: Text(
                                        data[index]["title"],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('266a68'),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 2, 10, 10),
                                      child: Text(
                                        data[index]["description"],
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: data == null ? 0 : data.length,
                  autoplay: true,
                  //to scroll news cards
                  viewportFraction: 0.9,
                  scale: 0.9,
                  scrollDirection: Axis.vertical,
                  key: UniqueKey(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:mooody/screens/detailarticle.dart';
import 'package:mooody/screens/infographics.dart';

class ArticleContent extends StatefulWidget {
  @override
  _ArticleContentState createState() => _ArticleContentState();
}

class _ArticleContentState extends State<ArticleContent> {
  @override
  void initState() {
    // ignore: todo
    //TODO: implement initState
    super.initState();
    getJSONData();
  }

  List data;
  String nodata;
  //String url;

  Future<String> getJSONData() async {
    var jsondata = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=mental+health+therapy+wellness&apiKey=4bce59b181cd4c7a82f93b04efa8cd59'));
    var fetchdata = jsonDecode(jsondata.body);

    setState(() {
      data = fetchdata["articles"];
    });
    if (mounted) {
      setState(() {
        nodata = "No data";
      });
    }
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
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
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35),
                              ),
                              child: Image.network(
                                data[index]["urlToImage"],
                                fit: BoxFit.cover,
                                height: 350,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 350, 0, 0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.37,
                              //height: 280,
                              width: 400,
                              child: Material(
                                borderRadius: BorderRadius.circular(35),
                                elevation: 10,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 10, 20),
                                      child: Text(
                                        data[index]["title"],
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('266a68'),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 10, 10, 20),
                                      child: Text(
                                        data[index]["description"],
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
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
                  autoplay: true, //to scroll news cards
                  viewportFraction: 0.8,
                  scale: 0.9,
                  scrollDirection: Axis.horizontal,
                  //pagination: new SwiperPagination(alignment: Alignment.bottomCenter),
                  //control: new SwiperControl(),
                  key: UniqueKey(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              //child: Container(
              //width: MediaQuery.of(context).size.width,
              //height: 80,
              child: Card(
                color: HexColor('f15944'),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Container(
                      //margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      /*child: */ Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Infographics',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // ),
                      //Container(
                      // margin: EdgeInsets.symmetric(horizontal: 30),
                      /*child:*/ Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InfoGraphics(),
                              ),
                            );
                          },
                          child: const Icon(Icons.arrow_forward_ios),
                          foregroundColor: HexColor('#f15944'),
                          backgroundColor: Colors.white,
                          mini: true,
                        ),
                      ),
                      //),
                    ],
                  ),
                ),
              ),
              //),
            ),
          ],
        ),
      ),
    );
  }
}

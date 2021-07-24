import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mooody/pages/ambient.dart';
import 'package:mooody/pages/articlecontent.dart';
import 'package:mooody/pages/home.dart';

void main() {
  runApp(Mooody());
}

class Mooody extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'mooody',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        accentColor: HexColor('f15944'),
        //themeData,
      ),
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  PageController pageController = PageController();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  var _pages = [Home(), ArticleContent(), Ambient()];
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    pageController.addListener(
      () {
        if (pageController.page.round() != _currentIndex) {
          setState(
            () {
              _currentIndex = pageController.page.round();
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          if (index != _currentIndex) {
            setState(() {
              _currentIndex = index;
              pageController.animateToPage(index,
                  duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            });
          }
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: HexColor("#f15944"),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.chrome_reader_mode),
            title: Text('Articles'),
            activeColor: HexColor("#f15944"),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.remove_red_eye),
            title: Text('Meditate'),
            activeColor: HexColor("#f15944"),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

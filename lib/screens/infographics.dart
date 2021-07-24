import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InfoGraphics extends StatelessWidget {
  const InfoGraphics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'mooody',
            style: TextStyle(color: HexColor('#f15944')),
          ),
          centerTitle: true,
          leading: BackButton(
            color: HexColor('#f15944'),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          backgroundColor: Colors.white),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Image(
                        image:
                            AssetImage('Infographics/final_infographics/1.png'),
                      ),
                    ),
                    Container(
                      child: Image(
                        image:
                            AssetImage('Infographics/final_infographics/2.png'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

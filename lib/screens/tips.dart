import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TipsTricks extends StatelessWidget {
  const TipsTricks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String sleepPoints =
        "•  Plan your exposure to light\n\n•  Making time for relaxation might help you feel better\n\n•  Avoid naps during the day as it makes it difficult to go back to sleep at night\n\n•  A quiet sleeping environment is a must for a good night’s rest\n\n•  Get regular exercise";
    String appetitePoints =
        "•  Eat small meals more frequently\n\n•	Add more calories to your meals\n\n•  Make mealtime an enjoyable social activity\n\n•  Don’t skip breakfast\n\n•  Incorporate Healthy Snacks";
    String workoutPoints =
        "•  Situps – Start with 20 and work your way up to 50\n\n•  Crunches – Shoot for three sets of 20.\n\n•	 Bicycles – Lie on your back, feet in the air, knees bent. Begin pumping your legs in the bicycle motion.\n\n•  Squats – Do two sets of 10.\n\n•	 Lunges – Do two sets of 10 on each side.";
    String contactPoints =
        "•  Skype can bridge the distance.\n\n•  Send a letter or a card.\n\n•	Plan get togethers.\n\n•	Make annual traditions.\n\n•	Google hangouts for group video chats.";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'mooody',
          style: TextStyle(
            color: HexColor('#f15944'),
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          color: HexColor('#f15944'),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 700,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Text(
                                  'How to fix your sleep cycle',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: HexColor('a3d3cb'),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            sleepPoints,
                            style: TextStyle(
                                fontSize: 20,
                                color: HexColor('266a68'),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 700,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Text(
                                  'How to treat appetite loss',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: HexColor('a3d3cb'),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            appetitePoints,
                            style: TextStyle(
                                fontSize: 20,
                                color: HexColor('266a68'),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 700,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Easy home workout \nroutines',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: HexColor('a3d3cb'),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            workoutPoints,
                            style: TextStyle(
                                fontSize: 20,
                                color: HexColor('266a68'),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 700,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Keep in Contact with your \nfriends and family',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: HexColor('a3d3cb'),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            contactPoints,
                            style: TextStyle(
                                fontSize: 20,
                                color: HexColor('266a68'),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
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

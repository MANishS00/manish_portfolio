import 'package:flutter/material.dart';

import 'constatnts.dart';

class L_Education extends StatelessWidget {
  const L_Education({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 850) {
      return buildContainer(screenSize);
    } else {
      return buildContaine(screenSize);
    }
  }

  Padding buildContaine(Size screenSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          "Educatation",
          style: kmobtitel,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text("2021 - 2024", style: kyear),
        ),
        Text(
          "BACHELOR OF TECHNOLOGY \nPriyadarshani college of Engineering, Nagpur",
          style: kyear,
        ),
        Text(
          "Artificial Intelignce and Data Science",
          style: kbold,
        ),
        Text(
          "71.00%\n",
          style: TextStyle(fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text("2018 - 2021", style: kyear),
        ),
        SizedBox(height: 8),
        Text("DIPLOMA OF ENGINEERING \nShree Datta Meghe Polytechnic,Nagpur",
            style: kyear),
        Text(
          "Computer Managment",
          style: kbold,
        ),
        Text(
          "85.40%\n",
          style: TextStyle(fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text("2005 - 2018", style: kyear),
        ),
        Text(
          "SSC",
          style: kyear,
        ),
        Text(
          "Regent High School, Nagpur",
          style: kbold,
        ),
        Text(
          "73.40%",
          style: TextStyle(fontSize: 15),
        )
      ]),
    );
  }

  Container buildContainer(Size screenSize) {
    return Container(
      child: Center(
        child: Container(
          width: screenSize.width / 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: Text(
                  "Educatation",
                  style: ktittel,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenSize.height / 1.8,
                    width: screenSize.width / 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "2021 - 2024",
                          style: kyear,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "2018 - 2021",
                          style: kyear,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "2005 - 2018",
                          style: kyear,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: screenSize.height / 1.8,
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                      height: screenSize.height / 1.5,
                      width: screenSize.width / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BACHELOR OF TECHNOLOGY",
                                  style: kyear,
                                ),
                                Text(
                                  "Priyadarshani college of Engineering, Nagpur",
                                  style: kyear,
                                ),
                                Text(
                                  "Artificial Intelignce and Data Science",
                                  style: kbold,
                                ),
                                Text(
                                  "71.00%",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("DIPLOMA OF ENGINEERING", style: kyear),
                                Text("Shree Datta Meghe Polytechnic,Nagpur",
                                    style: kyear),
                                Text(
                                  "Computer Managment",
                                  style: kbold,
                                ),
                                Text(
                                  "85.40%",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SSC",
                                  style: kyear,
                                ),
                                Text(
                                  "Regent High School, Nagpur",
                                  style: kbold,
                                ),
                                Text(
                                  "73.40%",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

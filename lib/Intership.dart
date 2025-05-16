import 'package:flutter/material.dart';

import 'constatnts.dart';

class L_Intership extends StatelessWidget {
  const L_Intership({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth > 850){
      return buildContainer(screenSize);
    }else {
      return buildContaine(screenSize);
    }
  }

  Column buildContaine(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 15),
          child: Text(
            "Interships",
            style: kmobtitel,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: screenSize.height / 2.5,
                width: 2,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text("IT,s NETWORKS, NAGPUR", style: kyear),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          "Certified Internship on IP Addressing & Networking."),
                    ),
                    SizedBox(height: 10),
                    Text("ICE Computers, NAGPUR", style: kyear),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          "Certified Internship on C, C++ and Python"),
                    ),
                    SizedBox(height: 10),
                    Text("GBJ BUZZ, NAGPUR", style: kyear),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          "Certified Internship, Created 25+ mini Graphic design project as a Intern"),
                    ),
                    SizedBox(height: 10),
                    Text("ACMEGRADE, NAGPUR", style: kyear),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          "Certified Internship on Artificial intelligence and Machine Learning."),
                    ),
                    SizedBox(height: 10),
                    Text("VASTRA SANSKRUTI, NAGPUR", style: kyear),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                          "Certified Internship, Its an E-commerce Website, were I performed as Web Designer and Video Editor"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
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
                "Interships",
                style: ktittel,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: screenSize.height / 2.3,
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text("IT,s NETWORKS, NAGPUR", style: kyear),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                            "Certified Internship on IP Addressing & Networking."),
                      ),
                      SizedBox(height: 10),
                      Text("ICE Computers, NAGPUR", style: kyear),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                            "Certified Internship on C, C++ and Python"),
                      ),
                      SizedBox(height: 10),
                      Text("GBJ BUZZ, NAGPUR", style: kyear),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                            "Certified Internship, Created 25+ mini Graphic design project as a Intern"),
                      ),
                      SizedBox(height: 10),
                      Text("ACMEGRADE, NAGPUR", style: kyear),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                            "Certified Internship on Artificial intelligence and Machine Learning."),
                      ),
                      SizedBox(height: 10),
                      Text("VASTRA SANSKRUTI, NAGPUR", style: kyear),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                            "Certified Internship, Its an E-commerce Website, were I performed as Web Designer and Video Editor"),
                      ),
                      SizedBox(height: 30,)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
  }
}

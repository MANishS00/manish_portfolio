import 'package:flutter/material.dart';
import 'package:portfolio_webiste/constatnts.dart';
import 'package:url_launcher/url_launcher.dart';

class Comtact_me extends StatelessWidget {
  final String insta =
      'https://www.instagram.com/manishso19?igsh=MW40b3I2aGNyems5aw%3D%3D';
  final String whatspp =
      'https://api.whatsapp.com/send/?phone=%2B919975039493&text=hello%21+Manish%2Cwhatsup&type=phone_number&app_absent=0';
  final String linkedin =
      'https://www.linkedin.com/in/manish-sontakke?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app';

  Future<void> _insta() async {
    final Uri url = Uri.parse(insta);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $insta';
    }
  }
  Future<void> _linkedin() async {
    final Uri url = Uri.parse(linkedin);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $linkedin';
    }
  }

  Future<void> _whatspp() async {
    final Uri url = Uri.parse(whatspp);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $whatspp';
    }
  }

  const Comtact_me({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth > 945){
      return buildCenter(screenSize);
    }else {
      return buildCente(screenSize);
    }
  }

  Padding buildCente(Size screenSize) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 58.0),
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Thank You",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text("Get in touch:",style: kbold,),
            ),

            Image.network(
              "https://cdn-icons-png.flaticon.com/512/2213/2213470.png",
              height: 20,
              width: 20,
            ),
            Text(" manishvsontakke@gmail.com"),
            SizedBox(height: 30),
            Image.network(
              "https://cdn-icons-png.flaticon.com/512/159/159832.png",
              height: 20,
              width: 20,
            ),
            Text(" +91 9975039493"),
            SizedBox(height: 30),
            Image.network(
              "https://cdn-icons-png.flaticon.com/512/535/535239.png",
              height: 20,
              width: 20,
            ),
            Text(" Hadapsar, Pune - MH "),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Text(
              "Social Media",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://cdn-icons-png.flaticon.com/512/5968/5968534.png",
                  height: 30,
                  width: 30,
                ),
                GestureDetector(
                  onTap: (_whatspp),
                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/2504/2504957.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                GestureDetector(
                  onTap: (_insta),
                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/174/174855.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                GestureDetector(
                  onTap: (_linkedin),
                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/128/3536/3536505.png",
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 50.0),
            //   child: Align(
            //     alignment: Alignment.bottomRight,
            //     child: Image.network(
            //       "https://i.ibb.co/TB2XDF0/download.png",
            //       height: screenSize.height / 10,
            //       width: screenSize.width / 2,
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
          ],
        ),

      ),
    );
  }

  Center buildCenter(Size screenSize) {
    return Center(
    child: Container(
      width: screenSize.width / 1.5,
      height: screenSize.height / 1.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Thank You",
                      style: TextStyle(fontSize: 50),
                    ),
                    Text("Get in touch:"),
                    SizedBox(height: 70),
                    Divider(
                      height: 2,
                      color: Colors.black,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Social Media",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/512/5968/5968534.png",
                            height: 30,
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: (_whatspp),
                            child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/2504/2504957.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          GestureDetector(
                            onTap: (_insta),
                            child: Image.network(
                              "https://cdn-icons-png.flaticon.com/512/174/174855.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          GestureDetector(
                            onTap: (_linkedin),
                            child: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/3536/3536505.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        height: screenSize.height / 3,
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/2213/2213470.png",
                          height: 30,
                          width: 30,
                        ),
                        Text(" manishvsontakke@gmail.com"),
                        SizedBox(height: 30),
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/159/159832.png",
                          height: 30,
                          width: 30,
                        ),
                        Text(" +91 9975039493"),
                        SizedBox(height: 30),
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/535/535239.png",
                          height: 30,
                          width: 30,
                        ),
                        Text(" Mahajanwadi, Nagpur - MH "),
                        SizedBox(
                          height: 30,
                        ),

                        // Image.network(
                        //   "https://i.ibb.co/TB2XDF0/download.png",
                        //   height: screenSize.height / 7,
                        //   width: screenSize.width / 5,
                        //   fit: BoxFit.fill,
                        // )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  }
}

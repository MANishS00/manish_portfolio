import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

import 'animations/Head_animation.dart';
import 'constatnts.dart';

class L_Head extends StatefulWidget {
  const L_Head({super.key});

  @override
  State<L_Head> createState() => _L_HeadState();
}

class _L_HeadState extends State<L_Head> {
  final String gitweb = 'https://github.com/MANishS00';
  final String linked =
      'https://www.linkedin.com/in/manish-sontakke?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app';

  Future<void> _gitlink() async {
    final Uri url = Uri.parse(gitweb);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $gitweb';
    }
  }

  Future<void> _linked() async {
    final Uri url = Uri.parse(linked);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $linked';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 942 ? Bigscreen() : Smallscreen();
  }

  Column Smallscreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
            child: hello_text(),
          ),
        ),
        sizedBox(400),
        name(),
        container(30),
      ],
    );
  }

  Padding Bigscreen() {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Color(0xffC5BAFF)),
        // height: 400,
        width: screenWidth / 1.5,
        child: Stack(
          alignment: Alignment.center,
          children: [
            sizedBox(500),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      hello_text(),
                      name(),
                    ],
                  ),
                ),
                SizedBox(width: 150),
                container(35),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text hello_text() {
    return Text("Hell'O Visitor \nI'm", style: TextStyle(fontSize: 15));
  }

  Container name() {
    return Container(
      child: Text(
        "MANISH\nSONTAKKE",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      )
          .animate()
          .fadeIn(duration: Duration(milliseconds: 1000))
          .slideX(begin: -1.0, end: 0.0),
    );
  }

  SizedBox sizedBox(isize) {
    return SizedBox(
      height: isize,
      child: Image.asset(
        "assets/image.png",
      )
          .animate()
          .fadeIn(duration: Duration(milliseconds: 800))
          .slideY(begin: 1.0, end: 0.0),
    );
  }

  Container container(size) {
    return Container(
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: LetterByLetterTextWithCursor()
                .animate()
                .fadeIn(duration: Duration(milliseconds: 1000))
                .slideY(begin: 0.5, end: 0.0),
          ),
          Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 1,
                    color: Colors.black,
                    width: 120,
                  ),
                  ColumnSwitcherScreen(),
                  Container(
                    height: 1,
                    color: Colors.black,
                    width: 120,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    gestureDetector(
                        _gitlink,
                        "https://cdn-icons-png.flaticon.com/512/2504/2504911.png",
                        size),
                    SizedBox(width: 20),
                    gestureDetector(
                        _linked,
                        "https://cdn-icons-png.flaticon.com/512/254/254394.png",
                        size),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector gestureDetector(tap, link, size) {
    return GestureDetector(
        onTap: tap,
        child: Image.network(
          link,
          height: size,
          width: size,
        ).animate().fadeIn()
        // .scale(begin: 0.5, end: 1.0),
        );
  }
}

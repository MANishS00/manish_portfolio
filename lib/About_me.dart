import 'package:flutter/material.dart';
import 'package:portfolio_webiste/constatnts.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'dart:html' as html;

import 'animations/About_animation.dart';
import 'animations/tittle animation.dart';


class About_me extends StatefulWidget {
  const About_me({super.key});

  @override
  _About_meState createState() => _About_meState();
}

class _About_meState extends State<About_me>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0), // Start from the right side of the screen
      end: Offset.zero, // End at the original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Smooth easing curve for the transition
    ));
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when done
    super.dispose();
  }

  void _openPdf() async {
    final pdfPath = 'assets/assets/CSE_Manish_Resume.pdf'; // PDF file in assets
    final html.AnchorElement anchorElement = html.AnchorElement(href: pdfPath);
    anchorElement.target = 'blank';
    anchorElement.click();
  }

  // Trigger animation when the widget is in view
  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction > 0.5 && !_isVisible) {
      setState(() {
        _isVisible = true;
      });
      _controller.forward(); // Start the animation once the widget is visible
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var screenSize = MediaQuery.of(context).size;

    if (screenWidth > 850) {
      return BigScreen(screenSize);
    } else {
      return Smallscreen(screenSize);
    }
  }

  Padding Smallscreen(Size screenSize) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          About_heading(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                about_para(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: thought(1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    column(
                        "https://cdn-icons-png.flaticon.com/512/14784/14784684.png",
                        10,
                        "Successful Projects"),
                    SizedBox(width: 30),
                    column(
                        "https://cdn-icons-png.flaticon.com/512/2874/2874786.png",
                        15,
                        "Certificates"),
                  ],
                ),
                Container(
                  width: screenSize.width / 1.2,
                  height: 2,
                  color: Colors.black,
                ),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container thought(size) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    return Container(
      width: screenWidth / size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(colors: [Colors.white60, Colors.white30])),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
              '"I am Passionate about to not only creating app, but also building solution people actually need and deliver exceptional user experiences."',textAlign: TextAlign.justify),
        ));
  }

  Padding button() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: PushableButton(
        onPressed: _openPdf,
        hslColor: HSLColor.fromAHSL(1, 222, 1.0, 0.85),
        height: 50,
      ),
    );
  }

  Column column(link, value, text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              link,
              height: 30,
              width: 30,
            ),
            AnimatedNumber(endValue: value),
            Text(" + ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Padding about_para() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "I am Manish Sontakke, a Cloud Software Engineer.\n",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "An innovative and resourceful software engineer with hands-on experience in designing and developing dynamic, user-centric applications. Passionate about leveraging cutting-edge technologies to create impactful software products that meet user needs and exceed expectations.\n\nSkilled in Flutter, Django, Python, and Firebase, with expertise in crafting responsive UIs, integrating robust backend systems, and deploying applications across web and mobile platforms.\n\nA proactive team player with a strong commitment to learning, collaboration, and delivering high-quality solutions. Excited to contribute to meaningful projects, grow with an organization, and make a lasting impact through technology.",
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  AnimatedVisibility About_heading() {
    return AnimatedVisibility(
      visibilityKey: Key('skills-header'),
      child: Row(
        children: [
          Text(
            "About Me",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Divider(
              color: Colors.black,
              thickness: 1,
              indent: 10,
            ),
          ),
        ],
      ),
    );
  }

  Center BigScreen(Size screenSize) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12)),
          width: screenSize.width / 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 50, right: 50),
                child: About_heading(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      column(
                          "https://cdn-icons-png.flaticon.com/512/14784/14784684.png",
                          10,
                          "Successful\nProjects"),
                      SizedBox(height: 30),
                      column(
                          "https://cdn-icons-png.flaticon.com/512/2874/2874786.png",
                          15,
                          "Certificates"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: screenSize.height / 1.6,
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: screenWidth / 2, child: about_para()),
                      thought(2),
                      Container(width: screenWidth / 3, child: button()),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

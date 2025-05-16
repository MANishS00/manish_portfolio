import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'animations/tittle animation.dart';
import 'constatnts.dart';

class Experiance extends StatefulWidget {
  const Experiance({super.key});

  @override
  _ExperianceState createState() => _ExperianceState();
}

class _ExperianceState extends State<Experiance> {
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var screenSize = MediaQuery.of(context).size;
    if (screenWidth > 850) {
      return Bigscreen(screenSize);
    } else {
      return Smallscreen(screenSize);
    }
  }

  Padding Smallscreen(screenSize) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: About_heading(),
          ),
          SizedBox(height: 10),
          column(
              "Cloud Software Engineer",
              "5 Jan 2022 – Present",
              "Developed cross-platform mobile applications using Flutter and Django, ensuring seamless user experiences, Created scalable backend services with secure RESTful APIs for managing complex business logic. Deployed projects on AWS, optimizing performance with EC2, S3, and CloudFront Collaborated with designers, product managers, and QA teams to meet project deadlines",
              "*  Integrated ML models with Flutter and Django backend for real-time\n*  Enhanced app responsiveness, boosting user engagement by 25%.\n*  Migrated a legacy application to AWS, reducing hosting costs by 30%."),
          // padding(
          //     screenSize,
          //     "Cloud Software Engineer",
          //     "5 Jan 2022 – Present",
          //     "Developed cross-platform mobile applications using Flutter and Django, ensuring seamless user experiences, Created scalable backend services with secure RESTful APIs for managing complex business logic. Deployed projects on AWS, optimizing performance with EC2, S3, and CloudFront Collaborated with designers, product managers, and QA teams to meet project deadlines",
          //     "*  Integrated ML models with Flutter and Django backend for real-time\n*  Enhanced app responsiveness, boosting user engagement by 25%.\n*  Migrated a legacy application to AWS, reducing hosting costs by 30%."),
          SizedBox(height: 30),
          column(
              "Flutter Inter",
              "1 June 2021 – 31 Dec 2022",
              "Developed mobile applications using Flutter, ensuring seamless user experiences, Created scalable backend services with secure RESTful APIs for managing complex business logic. Deployed projects on AWS, optimizing performance with EC2, S3, and CloudFront Collaborated with designers, product managers, and QA teams to meet project deadlines.",
              "")
        ],
      ),
    );
  }

  Padding Bigscreen(Size screenSize) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(12)),
        width: screenSize.width / 1.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 15, right: 40),
              child: About_heading(),
            ),
            padding(
                screenWidth,
                "Cloud Software Engineer",
                "5 Jan 2022 – Present",
                "Developed cross-platform mobile applications using Flutter and Django, ensuring seamless user experiences, Created scalable backend services with secure RESTful APIs for managing complex business logic. Deployed projects on AWS, optimizing performance with EC2, S3, and CloudFront Collaborated with designers, product managers, and QA teams to meet project deadlines",
                "*  Integrated ML models with Flutter and Django backend for real-time\n*  Enhanced app responsiveness, boosting user engagement by 25%.\n*  Migrated a legacy application to AWS, reducing hosting costs by 30%."),
            padding(
                screenWidth,
                "Flutter Inter",
                "1 June 2021 – 31 Dec 2022",
                "Developed mobile applications using Flutter, ensuring seamless user experiences, Created scalable backend services with secure RESTful APIs for managing complex business logic. Deployed projects on AWS, optimizing performance with EC2, S3, and CloudFront Collaborated with designers, product managers, and QA teams to meet project deadlines.",
                "")
          ],
        ),
      ),
    );
  }

  Padding padding(screenWidth, text1, text2, text3, text4) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [Colors.white54, Colors.white30])),
        width: screenWidth / 3,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: column(text1, text2, text3, text4),
        ),
      ),
    );
  }

  Column column(text1, text2, text3, text4) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Virtuous Global Services Pvt Ltd, Pune ",
          style: ktittel,
        ),
        Text(
          text1,
          style: kyear,
        ),
        Row(
          children: [
            Icon(Icons.date_range),
            Text(
              text2,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(height: 2),
        ),
        Text(
          text3,
          textAlign: TextAlign.justify,
        ),
        Text(text4),
      ],
    );
  }

  AnimatedVisibility About_heading() {
    return AnimatedVisibility(
      visibilityKey: Key('skills-header'),
      child: Row(
        children: [
          Text(
            "Experience",
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
}

import 'package:flutter/material.dart';

import 'constatnts.dart';

class My_Project extends StatelessWidget {
  const My_Project({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    if(screenWidth > 850){
      return buildCenter(screenSize);
    }else {
      return buildCente(screenSize);
    }
  }

  Column buildCente(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 15),
          child: Text(
            "My Projects",
            style: kmobtitel,
          ),
        ),
        Center(
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              buildProjectContaine(
                  "AVR E COMMERCE",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1XCxDTjVk7CnLWkSZ14yytZGGZreZpgdvYg&s",
                  "Augumented & Virtual based E-Commerce Application"),
              buildProjectContaine(
                  "Dr CROP",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbO9Zku88U8LVYHfXqeoTyjH84H7wOhYTWRaucqGnKztvBtfPmsFQMnkGTH6Nil4N69RM&usqp=CAU",
                  "Agriculture based Application for Growing Farming"),
              buildProjectContaine(
                  "S&S E COMMERCE",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1hXkdC7f1qErgBO6Wo2t-N4Ikbdmfaa4yYg&s",
                  " Refer and Earn Ecommerce Application"),
            ],
          ),
        ),
      ],
    );
  }
  Padding buildProjectContaine(String text, String link, String dec) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 270,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white54,
              Colors.white54,
              Colors.white54,
              Colors.black12,
              Colors.black87
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(link,
                  fit: BoxFit.cover, height: 200, width: 200),
            ),
            Column(
              children: [
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(dec, style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }

  Center buildCenter(Size screenSize) {
    return Center(
    child: Container(
      width: screenSize.width / 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 15),
            child: Text(
              "My Projects",
              style: ktittel,
            ),
          ),
          Center(
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              children: [
                buildProjectContainer(
                    "AVR E COMMERCE",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1XCxDTjVk7CnLWkSZ14yytZGGZreZpgdvYg&s",
                    "Augumented & Virtual based E-Commerce Application"),
                buildProjectContainer(
                    "Dr CROP",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbO9Zku88U8LVYHfXqeoTyjH84H7wOhYTWRaucqGnKztvBtfPmsFQMnkGTH6Nil4N69RM&usqp=CAU",
                    "Agriculture based Application for Growing Farming"),
                buildProjectContainer(
                    "S&S E COMMERCE",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1hXkdC7f1qErgBO6Wo2t-N4Ikbdmfaa4yYg&s",
                    " Refer and Earn Ecommerce Application"),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }
  Padding buildProjectContainer(String text, String link, String dec) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 270,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white54,
              Colors.white54,
              Colors.white54,
              Colors.black12,
              Colors.black87
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(link,
                  fit: BoxFit.cover, height: 200, width: 200),
            ),
            Column(
              children: [
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(dec, style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}

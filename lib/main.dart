import 'package:flutter/material.dart';
import 'About_me.dart';
import 'Contact_me.dart';
import 'Experiance.dart';
import 'Intership.dart';
import 'L_Head.dart';
import 'My_Education.dart';
import 'My_Skills.dart';
import 'My_projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Portfolio());
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE8F9FF),
        body:

            // ColumnSwitcherScreen(),
            SingleChildScrollView(
          child: Column(
            children: [
              Container(child: L_Head()),
              Container(color: Color(0xffC4D9FF), child: About_me()),
              Container(color: Color(0xffE8F9FF), child: Experiance()),
              Container(color: Color(0xffC4D9FF), child: L_Education()),
              Container(color: Color(0xffE8F9FF), child: L_Intership()),
              Container(color: Color(0xffC4D9FF), child: Skills()),
              Container(color: Color(0xffE8F9FF), child: My_Project()),
              Container(color: Color(0xffC4D9FF), child: Comtact_me())
            ],
          ),
        ),
      ),
    );
  }
}

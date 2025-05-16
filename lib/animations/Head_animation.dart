import 'dart:async';

import 'package:flutter/material.dart';


class LetterByLetterTextWithCursor extends StatefulWidget {
  const LetterByLetterTextWithCursor({super.key});

  @override
  State<LetterByLetterTextWithCursor> createState() =>
      _LetterByLetterTextWithCursorState();
}

class _LetterByLetterTextWithCursorState
    extends State<LetterByLetterTextWithCursor> {
  final List<String> texts = [
    "FLUTTER DEVELOPER",
    "CLOUD SOFTWARE ENGINEER",
    "MOBILE APP DEVELOPER",
  ];

  String displayedText = "";
  int textIndex = 0;
  int charIndex = 0;
  bool showCursor = true;

  Timer? _typingTimer;
  Timer? _cursorTimer;

  @override
  void initState() {
    super.initState();
    _startCursorBlinking();
    _startTyping();
  }

  void _startCursorBlinking() {
    _cursorTimer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      setState(() {
        showCursor = !showCursor;
      });
    });
  }

  void _startTyping() {
    displayedText = "";
    charIndex = 0;
    _typingTimer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      setState(() {
        displayedText += texts[textIndex][charIndex];
        charIndex++;
      });

      if (charIndex >= texts[textIndex].length) {
        timer.cancel();

        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            textIndex = (textIndex + 1) % texts.length;
          });
          _startTyping();
        });
      }
    });
  }

  @override
  void dispose() {
    _typingTimer?.cancel();
    _cursorTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String fullText = displayedText;
    if (charIndex < texts[textIndex].length) {
      fullText += showCursor ? "_" : "_";
    }

    return Text(
      fullText,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}


class ColumnSwitcherScreen extends StatefulWidget {
  @override
  _ColumnSwitcherScreenState createState() => _ColumnSwitcherScreenState();
}

class _ColumnSwitcherScreenState extends State<ColumnSwitcherScreen> {
  final List<Widget> columnWidgets = [
    Column(
      key: ValueKey('from'),
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("From"),
        Text("NAGPUR", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
    Column(
      key: ValueKey('experience'),
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Experience"),
        Text("+3 Years", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
    Column(
      key: ValueKey('projects'),
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Projects"),
        Text("7+ Projects", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
    Column(
      key: ValueKey('dob'),
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Date of Birth"),
        Text("May 15, 2001", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % columnWidgets.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      AnimatedSwitcher(
        duration: Duration(milliseconds: 600),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        },
        child: columnWidgets[_currentIndex],
      );

  }
}
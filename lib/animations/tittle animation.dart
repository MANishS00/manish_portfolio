import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart'; // Import visibility detector

class AnimatedVisibility extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final Key visibilityKey;

  const AnimatedVisibility({
    Key? key,
    required this.child,
    this.duration = const Duration(seconds: 1),
    this.curve = Curves.easeInOut,
    required this.visibilityKey,
  }) : super(key: key);

  @override
  _AnimatedVisibilityState createState() => _AnimatedVisibilityState();
}

class _AnimatedVisibilityState extends State<AnimatedVisibility> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0), // Start from the right side of the screen
      end: Offset.zero, // End at the original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: widget.curve, // Smooth easing curve for the transition
    ));
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when done
    super.dispose();
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
    return VisibilityDetector(
      key: widget.visibilityKey,
      onVisibilityChanged: _onVisibilityChanged,
      child: SlideTransition(
        position: _slideAnimation,
        child: widget.child,
      ),
    );
  }
}

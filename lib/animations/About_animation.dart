import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../animation_controller_state.dart';
import '../constatnts.dart';

class AnimatedNumber extends StatefulWidget {
  final double endValue;

  const AnimatedNumber({Key? key, required this.endValue}) : super(key: key);

  @override
  _AnimatedNumberState createState() => _AnimatedNumberState();
}

class _AnimatedNumberState extends State<AnimatedNumber> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: Duration(seconds: 5), // Animation duration
      vsync: this,
    );

    // Define the Tween for animation
    _animation = Tween<double>(begin: 0, end: widget.endValue).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  // Trigger the animation when the widget becomes visible
  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction > 0.1 && !_controller.isAnimating) {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('animated-number-${widget.endValue}'),
      onVisibilityChanged: _onVisibilityChanged,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Text(
            _animation.value.toStringAsFixed(0), // Display number rounded to an integer
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller
    super.dispose();
  }
}



/// A widget to show a "3D" pushable button
class PushableButton extends StatefulWidget {
  const PushableButton({
    Key? key,
    this.child,
    required this.hslColor,
    required this.height,
    this.elevation = 8.0,
    this.shadow,
    this.onPressed,
  })  : assert(height > 0),
        super(key: key);

  /// child widget (normally a Text or Icon)
  final Widget? child;

  /// Color of the top layer
  /// The color of the bottom layer is derived by decreasing the luminosity by 0.15
  final HSLColor hslColor;

  /// height of the top layer
  final double height;

  /// elevation or "gap" between the top and bottom layer
  final double elevation;

  /// An optional shadow to make the button look better
  /// This is added to the bottom layer only
  final BoxShadow? shadow;

  /// button pressed callback
  final VoidCallback? onPressed;

  @override
  _PushableButtonState createState() =>
      _PushableButtonState(Duration(milliseconds: 100));
}
class _PushableButtonState extends AnimationControllerState<PushableButton> {
  _PushableButtonState(Duration duration) : super(duration);

  bool _isDragInProgress = false;
  Offset _gestureLocation = Offset.zero;

  void _handleTapDown(TapDownDetails details) {
    _gestureLocation = details.localPosition;
    animationController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    animationController.reverse();
    widget.onPressed?.call();
  }

  void _handleTapCancel() {
    Future.delayed(Duration(milliseconds: 100), () {
      if (!_isDragInProgress && mounted) {
        animationController.reverse();
      }
    });
  }

  void _handleDragStart(DragStartDetails details) {
    _gestureLocation = details.localPosition;
    _isDragInProgress = true;
    animationController.forward();
  }

  void _handleDragEnd(Size buttonSize) {
    if (_isDragInProgress) {
      _isDragInProgress = false;
      animationController.reverse();
    }
    if (_gestureLocation.dx >= 0 &&
        _gestureLocation.dy < buttonSize.width &&
        _gestureLocation.dy >= 0 &&
        _gestureLocation.dy < buttonSize.height) {
      widget.onPressed?.call();
    }
  }

  void _handleDragCancel() {
    if (_isDragInProgress) {
      _isDragInProgress = false;
      animationController.reverse();
    }
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    _gestureLocation = details.localPosition;
  }

  @override
  Widget build(BuildContext context) {
    final totalHeight = widget.height + widget.elevation;
    return SizedBox(
      height: totalHeight,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final buttonSize = Size(constraints.maxWidth, constraints.maxHeight);
          return GestureDetector(
            onTapDown: _handleTapDown,
            onTapUp: _handleTapUp,
            onTapCancel: _handleTapCancel,
            onHorizontalDragStart: _handleDragStart,
            onHorizontalDragEnd: (_) => _handleDragEnd(buttonSize),
            onHorizontalDragCancel: _handleDragCancel,
            onHorizontalDragUpdate: _handleDragUpdate,
            onVerticalDragStart: _handleDragStart,
            onVerticalDragEnd: (_) => _handleDragEnd(buttonSize),
            onVerticalDragCancel: _handleDragCancel,
            onVerticalDragUpdate: _handleDragUpdate,
            child: AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                final top = animationController.value * widget.elevation;
                final hslColor = widget.hslColor;
                final bottomHslColor =
                hslColor.withLightness(hslColor.lightness - 0.15);
                return Stack(
                  children: [
                    // Draw bottom layer first with rounded rectangle
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: totalHeight - top,
                        decoration: BoxDecoration(
                          color: bottomHslColor.toColor(),
                          boxShadow:
                          widget.shadow != null ? [widget.shadow!] : [],
                          borderRadius:
                          BorderRadius.circular(12), // Small rounded corners
                        ),
                      ),
                    ),
                    // Then top (pushable) layer with rounded rectangle
                    Positioned(
                      left: 0,
                      right: 0,
                      top: top,
                      child: Container(
                        height: widget.height,
                        decoration: BoxDecoration(
                          color: hslColor.toColor(),
                          borderRadius: BorderRadius.circular(12), // Rounded corners
                        ),
                        child: Center(child: widget.child),
                      ),
                    ),
                    // Optional: Text label on the button, if required
                    Positioned(
                      left: 0,
                      right: 0,
                      top: top,
                      child: Container(
                        height: widget.height,
                        decoration: BoxDecoration(
                          color: hslColor.toColor(),
                          borderRadius: BorderRadius.circular(12), // Rounded corners
                        ),
                        child: Center(child: Text("Resume",style: kyear,)),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}

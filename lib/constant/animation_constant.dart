import 'package:flutter/material.dart';

class FadeSlideTransition extends StatefulWidget {
  final Widget child;
  final double x;
  final double xEnd;
  final double y;
  final double yEnd;
  final int duration;
  final bool isStart;
  final int startAfter;

  const FadeSlideTransition(
      {super.key,
      required this.child,
      required this.x,
      required this.y,
      required this.duration,
      this.isStart = true,
      this.xEnd = 0,
      this.yEnd = 0,
      this.startAfter = 0});

  @override
  State<FadeSlideTransition> createState() => _FadeSlideTransitionState();
}

class _FadeSlideTransitionState extends State<FadeSlideTransition> with TickerProviderStateMixin {
  late Animation<double> animations;
  late Animation<double> animationsTwo;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration),
    );

    animations = Tween<double>(begin: widget.y, end: widget.yEnd).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );

    animationsTwo = Tween<double>(begin: widget.x, end: widget.xEnd).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isStart) {
      Future.delayed(
        Duration(milliseconds: widget.startAfter),
        () {
          controller.forward();
        },
      );
    } else {
      controller.reverse();
    }
    return Stack(
      children: [
        AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Opacity(
              opacity: controller.value,
              child: Transform.translate(
                offset: Offset(animationsTwo.value, animations.value),
                // adjust this as per your requirement
                child: child,
              ),
            );
          },
          child: widget.child,
        ),
      ],
    );
  }
}

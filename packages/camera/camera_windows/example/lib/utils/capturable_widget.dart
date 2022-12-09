import 'package:flutter/material.dart';
import 'capture.dart';

class CapturableWidget extends StatelessWidget {
  final Widget? child;
  final CapturableWidgetController controller;

  const CapturableWidget({
    Key? key,
    required this.child,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// to capture widget to image by GlobalKey in RepaintBoundary
    return RepaintBoundary(
      key: controller.containerKey,
      child: child,
    );
  }
}

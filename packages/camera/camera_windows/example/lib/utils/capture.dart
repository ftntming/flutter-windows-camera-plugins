import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

class CapturableWidgetController {
  GlobalKey containerKey = GlobalKey();

  /// to capture widget to image by GlobalKey in RenderRepaintBoundary
  Future<ui.Image?> capture() async {
    try {
      /// boundary widget by GlobalKey
      RenderRepaintBoundary? boundary = containerKey.currentContext
          ?.findRenderObject() as RenderRepaintBoundary?;

      /// convert boundary to image
      final image = await boundary!.toImage();

      /// set ImageByteFormat
      // final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      // final pngBytes = byteData?.buffer.asUint8List();
      // return pngBytes;
      return image;
    } catch (e) {
      rethrow;
    }
  }
}

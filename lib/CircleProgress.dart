import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/painting.dart';

class CircleProgress extends CustomPainter{
  double currentProgress;

  CircleProgress(this.currentProgress);
  @override
  void paint(Canvas canvas, Size size) {
    //base circle
    Paint outerCircle = Paint()
      ..strokeWidth = 20
      ..color=Colors.redAccent

      ..style= PaintingStyle.stroke;

    Paint completeArc= Paint()
      ..strokeWidth= 20
      ..color=Colors.lightGreen
      ..style=PaintingStyle.stroke
      ..strokeCap=StrokeCap.square;

    Offset center= Offset(size.width/2, size.height/2);
    double radius =min(size.width/2,size.height/2)-7;

    canvas.drawCircle(center, radius, outerCircle);
    double angle = 2* pi*(currentProgress/100);
    canvas.drawArc(Rect.fromCircle(center: center,radius: radius), -pi/2, angle, false, completeArc);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    //throw UnimplementedError(); //TODO uncomment
    return true;
  }
}
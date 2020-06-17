import 'package:flutter/material.dart';

class AppClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(35, 0, 50, 20);
    path.quadraticBezierTo(size.width / 2, 50, size.width - 50, 20);
    path.quadraticBezierTo(size.width - 30, 0, size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

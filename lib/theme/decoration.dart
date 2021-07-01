import 'package:flutter/material.dart';

const BoxDecoration mainBackground = BoxDecoration(
  gradient: RadialGradient(
    colors: [
      Color(0xff3BF2EB),
      Color(0xff6C41E4),
      Color(0xffFE9B38),
    ],
    stops: [
      0.25,
      0.6,
      1.4,
    ],
    center: Alignment(1.0, 0.4),
    radius: 1.8,
  ),
);

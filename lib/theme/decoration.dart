import 'package:flutter/material.dart';
import 'package:todolist_app/theme/color_palette.dart';

const BoxDecoration taskScreenDecoration = BoxDecoration(
  gradient: RadialGradient(
    colors: backgroundColor,
    stops: [
      0.25,
      0.6,
      1.4,
    ],
    center: Alignment(1.0, 0.4),
    radius: 1.8,
  ),
);

const BoxDecoration tasksListDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
  boxShadow: [
    BoxShadow(
      color: Color(0x22121212),
      blurRadius: 2.0,
      spreadRadius: 1.0,
    ),
  ],
);

const BoxDecoration innerTasksListDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
  boxShadow: [
    BoxShadow(
      color: Color(0x22121212),
      blurRadius: 2.0,
      spreadRadius: 1.0,
    ),
  ],
);

const BoxDecoration taskBottomSheetDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
  // boxShadow: [
  //   BoxShadow(
  //     color: Color(0x22121212),
  //     blurRadius: 2.0,
  //     spreadRadius: 1.0,
  //   ),
  // ],
);

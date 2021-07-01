import 'package:flutter/material.dart';
import 'package:todolist_app/theme/color_palette.dart';

const TextStyle appTitleTextStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.w600,
  fontFamily: 'Barlow',
  color: Colors.white,
);

const TextStyle taskTrackerTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  fontFamily: 'Barlow',
  color: Colors.white,
);

const TextStyle uncheckedTaskTitleTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w600,
  fontFamily: 'Barlow',
);

const TextStyle checkedTaskTitleTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  fontFamily: 'Barlow',
  decoration: TextDecoration.lineThrough,
  color: Colors.white,
);

const TextStyle uncheckedTaskSubtitleTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
  fontFamily: 'Barlow',
);

const TextStyle checkedTaskSubtitleTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w400,
  fontFamily: 'Barlow',
  decoration: TextDecoration.lineThrough,
  color: Colors.white,
);

// bottom sheet

const TextStyle bottomSheetTitleTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w700,
  fontFamily: 'Barlow',
  color: bottomSheetTitleTextColor,
);

const TextStyle bottomSheetSectionTitleTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  fontFamily: 'Barlow',
  color: bottomSheetTitleTextColor,
);

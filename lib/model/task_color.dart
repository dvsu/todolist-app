import 'package:flutter/material.dart';

class TaskColor {
  Color shadowColor;
  Color primaryColor;
  Color highlightColor;

  TaskColor(
      {required this.shadowColor,
      required this.primaryColor,
      required this.highlightColor});
}

class TaskColors {
  static final TaskColor grey = TaskColor(
    shadowColor: Color(0x11818181),
    primaryColor: Color(0xff818181),
    highlightColor: Color(0x99818181),
  );

  static final TaskColor purple = TaskColor(
    shadowColor: Color(0x116C41E4),
    primaryColor: Color(0xff6C41E4),
    highlightColor: Color(0x996C41E4),
  );

  static final TaskColor cyan = TaskColor(
    shadowColor: Color(0x113BF2EB),
    primaryColor: Color(0xff3BF2EB),
    highlightColor: Color(0x993BF2EB),
  );

  static final TaskColor orange = TaskColor(
    shadowColor: Color(0x11FE9B38),
    primaryColor: Color(0xffFE9B38),
    highlightColor: Color(0x99FE9B38),
  );
}

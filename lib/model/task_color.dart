import 'package:flutter/material.dart';

class TaskColor {
  Color primaryColor;
  Color highlightColor;

  TaskColor({required this.primaryColor, required this.highlightColor});
}

class TaskColors {
  static final TaskColor grey = TaskColor(
    primaryColor: Color(0x11818181),
    highlightColor: Color(0xdd818181),
  );

  static final TaskColor purple = TaskColor(
    primaryColor: Color(0x116C41E4),
    highlightColor: Color(0xdd6C41E4),
  );

  static final TaskColor cyan = TaskColor(
    primaryColor: Color(0x113BF2EB),
    highlightColor: Color(0xdd3BF2EB),
  );

  static final TaskColor orange = TaskColor(
    primaryColor: Color(0x11FE9B38),
    highlightColor: Color(0xddFE9B38),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/theme/text_style.dart';

class TaskCard extends StatelessWidget {
  final String taskTitle;
  final String taskSubtitle;
  final List<Color> taskColor;

  TaskCard(
      {required this.taskTitle,
      this.taskSubtitle = '',
      this.taskColor = const [
        Color(0x11818181),
        Color(0xdd818181),
      ]});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.005.sh),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.03.sw),
        gradient: LinearGradient(
          colors: taskColor,
          stops: [
            0.9,
            0.9,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ListTile(
        visualDensity: VisualDensity.comfortable,
        horizontalTitleGap: 1.0,
        contentPadding: EdgeInsets.only(
            left: 0.01.sw, right: 0.1.sw, top: 0.006.sh, bottom: 0.006.sh),
        dense: true,
        title: Text(
          taskTitle,
          style: taskTitleTextStyle,
        ),
        subtitle: (taskSubtitle == '')
            ? null
            : Text(
                taskSubtitle,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Barlow',
                ),
              ),
        leading: Checkbox(
          checkColor: Color(0xffffffff),
          value: false,
          onChanged: (value) {},
        ),
      ),
    );
  }
}

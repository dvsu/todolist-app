import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/theme/text_style.dart';
import 'package:todolist_app/model/task_color.dart';

class TaskCard extends StatelessWidget {
  final String taskTitle;
  final String? taskSubtitle;
  final TaskColor? taskColor;
  final Function(bool?) onPressed;
  final bool isChecked;

  TaskCard(
      {required this.taskTitle,
      this.taskSubtitle,
      this.taskColor,
      required this.isChecked,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.005.sh),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.03.sw),
        gradient: LinearGradient(
          colors: isChecked
              ? [Color(0x33121212), Color(0x33121212)]
              : (taskColor == null)
                  ? [
                      TaskColors.grey.primaryColor,
                      TaskColors.grey.highlightColor
                    ]
                  : [taskColor!.primaryColor, taskColor!.highlightColor],
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
          style: isChecked
              ? checkedTaskTitleTextStyle
              : uncheckedTaskTitleTextStyle,
        ),
        subtitle: (taskSubtitle == null)
            ? null
            : Text(
                taskSubtitle ?? '',
                maxLines: 2,
                style: isChecked
                    ? checkedTaskSubtitleTextStyle
                    : uncheckedTaskSubtitleTextStyle,
              ),
        leading: Checkbox(
          activeColor: (taskColor == null)
              ? TaskColors.grey.highlightColor
              : taskColor!.highlightColor,
          value: isChecked,
          onChanged: onPressed,
        ),
      ),
    );
  }
}

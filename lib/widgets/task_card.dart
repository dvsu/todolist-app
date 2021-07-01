import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/theme/text_style.dart';

class TaskCard extends StatefulWidget {
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
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.005.sh),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.03.sw),
        gradient: LinearGradient(
          colors: widget.taskColor,
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
          widget.taskTitle,
          style: taskTitleTextStyle,
        ),
        subtitle: (widget.taskSubtitle == '')
            ? null
            : Text(
                widget.taskSubtitle,
                maxLines: 2,
                style: taskSubtitleTextStyle,
              ),
        leading: TaskCardCheckBox(
          checkedColor: widget.taskColor[1],
          isChecked: isChecked,
          onPressed: (bool? updatedState) {
            setState(() {
              print(updatedState);
              isChecked = updatedState ?? false;
            });
          },
        ),
      ),
    );
  }
}

class TaskCardCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function(bool?) onPressed;
  final Color checkedColor;

  TaskCardCheckBox({
    required this.isChecked,
    required this.onPressed,
    required this.checkedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: checkedColor,
      value: isChecked,
      onChanged: onPressed,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_app/theme/decoration.dart';
import 'package:todolist_app/theme/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/theme/color_palette.dart';
import 'package:todolist_app/model/task_color.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  List<bool> _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 0.03.sh),
        decoration: taskBottomSheetDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: bottomSheetTitleTextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.02.sh),
              child: Text(
                'Task Name',
                style: bottomSheetSectionTitleTextStyle,
              ),
            ),
            TextField(
              autofocus: true,
              //textAlign: TextAlign.center,
              cursorColor: bottomInsetTextFieldCursorColor,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.02.sh),
              child: Text(
                'Task Description',
                style: bottomSheetSectionTitleTextStyle,
              ),
            ),
            TextField(
              autofocus: true,
              //textAlign: TextAlign.center,
              cursorColor: bottomInsetTextFieldCursorColor,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.02.sh),
              child: Text(
                'Task Label',
                style: bottomSheetSectionTitleTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.01.sh),
              child: ToggleButtons(
                children: <Widget>[
                  Container(
                    width: 0.08.sw,
                    height: 0.08.sw,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: TaskColors.purple.highlightColor,
                        border: (_selections[0] == true)
                            ? Border.all(
                                width: 0.005.sw,
                                color: TaskColors.purple.primaryColor)
                            : null),
                  ),
                  Container(
                    width: 0.08.sw,
                    height: 0.08.sw,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: TaskColors.cyan.highlightColor,
                        border: (_selections[1] == true)
                            ? Border.all(
                                width: 0.005.sw,
                                color: TaskColors.cyan.primaryColor)
                            : null),
                  ),
                  Container(
                    width: 0.08.sw,
                    height: 0.08.sw,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: TaskColors.orange.highlightColor,
                        border: (_selections[2] == true)
                            ? Border.all(
                                width: 0.005.sw,
                                color: TaskColors.orange.primaryColor)
                            : null),
                  ),
                ],
                fillColor: Colors.transparent,
                splashColor: Colors.transparent,
                renderBorder: false,
                isSelected: _selections,
                onPressed: (index) {
                  print(index);
                  setState(() {
                    _selections = List.generate(3, (_) => false);
                    _selections[index] = !_selections[index];
                  });
                },
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 0.0.sw, vertical: 0.02.sh),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Add'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(bottomSheetButtonColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

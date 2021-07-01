import 'package:flutter/material.dart';
import 'package:todolist_app/theme/decoration.dart';
import 'package:todolist_app/theme/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/theme/color_palette.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 0.03.sh),
        decoration: taskBottomSheetDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              style: bottomSheetTitleTextStyle,
            ),
            TextField(
              autofocus: true,
              cursorColor: bottomInsetTextFieldCursorColor,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: bottomInsetTextFieldCursorColor,
                  ),
                ),
              ),
            ),
            ElevatedButton(
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
            )
          ],
        ),
      ),
    );
  }
}
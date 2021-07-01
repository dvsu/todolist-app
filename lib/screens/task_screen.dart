import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/tasks_list.dart';
import 'package:todolist_app/theme/decoration.dart';
import 'package:todolist_app/theme/text_style.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil().setWidth(MediaQuery.of(context).size.width);
    ScreenUtil().setHeight(MediaQuery.of(context).size.height);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff6C41E4),
        child: Icon(Icons.add_rounded),
      ),
      body: Container(
        decoration: mainBackground,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 0.1.sh.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.05.sw),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        color: Color(0xff6C41E4),
                        size: 30.0,
                      )),
                ),
              ),
              Expanded(
                flex: 0.075.sh.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.05.sw, bottom: 0.005.sh),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'TODO LIST',
                      style: appTitleTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0.075.sh.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.05.sw, top: 0.005.sh),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '12 tasks remaining',
                      textAlign: TextAlign.left,
                      style: taskTrackerTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0.75.sh.toInt(),
                child: Container(
                  decoration: tasksListBackground,
                  child: TasksList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

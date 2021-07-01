import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/tasks_list.dart';
import 'package:todolist_app/theme/decoration.dart';
import 'package:todolist_app/theme/text_style.dart';
import 'package:todolist_app/screens/add_task_screen.dart';
import 'package:todolist_app/data/tasks.dart';
import 'package:todolist_app/model/task.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = Tasks.tasks;

  @override
  Widget build(BuildContext context) {
    ScreenUtil().setWidth(MediaQuery.of(context).size.width);
    ScreenUtil().setHeight(MediaQuery.of(context).size.height);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  )));
        },
        backgroundColor: Color(0xff6C41E4),
        child: Icon(Icons.add_rounded),
      ),
      body: Container(
        decoration: taskScreenDecoration,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 0.075.sh.toInt(),
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
                flex: 0.04.sh.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.05.sw, top: 0.005.sh),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '12 tasks completed',
                      textAlign: TextAlign.left,
                      style: taskTrackerTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0.04.sh.toInt(),
                child: Padding(
                  padding: EdgeInsets.only(left: 0.05.sw, bottom: 0.005.sh),
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
                  decoration: tasksListDecoration,
                  child: TasksList(
                    tasks: tasks,
                    //onPressed:
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

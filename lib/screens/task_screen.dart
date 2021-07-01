import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/task_card.dart';
import 'package:todolist_app/theme/task_color.dart';
import 'package:todolist_app/theme/decoration.dart';

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
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Barlow',
                        color: Colors.white,
                      ),
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
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Barlow',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 0.75.sh.toInt(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x22121212),
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: ListView(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.02.sw, vertical: 0.011.sh),
                    children: [
                      TaskCard(
                        taskTitle: 'Lorem ipsum dolor sit amet',
                        taskSubtitle:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed leo luctus, commodo enim varius, ullamcorper neque. Vivamus ac arcu odio. Donec volutpat tempus elit, ac iaculis elit iaculis non.',
                      ),
                      TaskCard(
                        taskTitle: 'My task 2',
                        taskSubtitle:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        taskColor: TaskColor.cyan,
                      ),
                      TaskCard(
                        taskTitle: 'My task 3',
                        taskColor: TaskColor.orange,
                      ),
                      TaskCard(
                        taskTitle: 'My task 4',
                        taskColor: TaskColor.purple,
                      ),
                    ],
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

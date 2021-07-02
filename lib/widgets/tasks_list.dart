import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/task_card.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/data/tasks.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.012.sh),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskCard(
            taskTitle: Provider.of<Tasks>(context).tasks[index].taskName,
            taskSubtitle:
                Provider.of<Tasks>(context).tasks[index].taskDescription,
            taskColor: Provider.of<Tasks>(context).tasks[index].taskColor,
            isChecked: Provider.of<Tasks>(context).tasks[index].isTaskCompleted,
            onPressed: (bool? updatedState) {
              // setState(
              //   () {
              //     Provider.of<Tasks>(context).tasks[index].isTaskCompleted =
              //         updatedState ?? false;
              //   },
              // );
            },
          );
        },
        itemCount: Provider.of<Tasks>(context).taskCount(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/task_card.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.012.sh),
      child: Consumer(
        builder: (context, taskData, child) => ListView.builder(
          itemBuilder: (context, index) {
            return TaskCard(
              taskTitle: taskData.tasks[index].taskName,
              taskSubtitle: taskData.tasks[index].taskDescription,
              taskColor: taskData.tasks[index].taskColor,
              isChecked: taskData.tasks[index].isTaskCompleted,
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
          itemCount: taskData.tasks.length,
        ),
      ),
    );
  }
}

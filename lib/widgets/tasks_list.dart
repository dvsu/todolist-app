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
          final task = Provider.of<Tasks>(context).tasks[index];
          return TaskCard(
            taskTitle: task.taskName,
            taskSubtitle: task.taskDescription,
            taskColor: task.taskColor,
            isChecked: task.isTaskCompleted,
            onPressed: (bool? updatedState) {
              Provider.of<Tasks>(context, listen: false).updateTask(
                  Provider.of<Tasks>(context, listen: false).tasks[index]);
            },
            onLongPressed: () {
              Provider.of<Tasks>(context, listen: false).deleteTask(
                  Provider.of<Tasks>(context, listen: false).tasks[index]);
            },
          );
        },
        itemCount: Provider.of<Tasks>(context).taskCount(),
      ),
    );
  }
}

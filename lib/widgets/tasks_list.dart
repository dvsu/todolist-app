import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/task_card.dart';
import 'package:todolist_app/model/task_color.dart';
import 'package:todolist_app/model/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  //final Function(bool?, int) onPressed;

  TasksList({required this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.012.sh),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskCard(
            taskTitle: widget.tasks[index].taskName,
            taskSubtitle: widget.tasks[index].taskDescription,
            taskColor: widget.tasks[index].taskColor,
            isChecked: widget.tasks[index].isTaskCompleted,
            onPressed: (bool? updatedState) {
              setState(
                () {
                  widget.tasks[index].isTaskCompleted = updatedState ?? false;
                },
              );
            },
          );
        },
        itemCount: widget.tasks.length,
      ),
    );
  }
}

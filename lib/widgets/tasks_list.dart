import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/task_card.dart';
import 'package:todolist_app/model/task_color.dart';
import 'package:todolist_app/model/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(
      taskName: 'Lorem ipsum dolor sit amet',
      taskDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed leo luctus, commodo enim varius, ullamcorper neque. Vivamus ac arcu odio. Donec volutpat tempus elit, ac iaculis elit iaculis non.',
      taskColor: TaskColors.cyan,
    ),
    Task(
      taskName: 'My task 2',
      taskDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      taskColor: TaskColors.orange,
    ),
    Task(
      taskName: 'My task 3',
    ),
    Task(
      taskName: 'My task 4',
      taskColor: TaskColors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.012.sh),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskCard(
            taskTitle: tasks[index].taskName,
            taskSubtitle: tasks[index].taskDescription,
            taskColor: tasks[index].taskColor,
            isChecked: tasks[index].isTaskCompleted,
            onPressed: (bool? updatedState) {
              setState(
                () {
                  tasks[index].isTaskCompleted = updatedState ?? false;
                },
              );
            },
          );
        },
        itemCount: tasks.length,
      ),
    );
  }
}

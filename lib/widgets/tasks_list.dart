import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/task_card.dart';
import 'package:todolist_app/model/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  final Function(Map<String, dynamic>) taskTrackerCallback;

  TasksList({required this.tasks, required this.taskTrackerCallback});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  int taskCompleted = 0;
  int taskRemaining = 0;
  bool initialized = false;

  @override
  void initState() {
    super.initState();
    for (Task task in widget.tasks) {
      if (task.isTaskCompleted == true) {
        taskCompleted += 1;
      } else {
        taskRemaining += 1;
      }
    }
    widget.taskTrackerCallback({
      'completed': taskCompleted,
      'remaining': taskRemaining,
      'initialized': initialized
    });
    initialized = true;
  }

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
                  if (updatedState == true) {
                    taskCompleted += 1;
                    taskRemaining -= 1;
                  } else {
                    taskCompleted -= 1;
                    taskRemaining += 1;
                  }
                  widget.taskTrackerCallback({
                    'completed': taskCompleted,
                    'remaining': taskRemaining,
                    'initialized': initialized
                  });
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

import 'package:todolist_app/model/task_color.dart';

class Task {
  String taskName;
  String? taskDescription;
  bool isTaskCompleted;
  TaskColor? taskColor;

  Task(
      {required this.taskName,
      this.taskDescription,
      this.taskColor,
      this.isTaskCompleted = false});
}

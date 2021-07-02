import 'package:todolist_app/model/task.dart';
import 'package:todolist_app/model/task_color.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class Tasks extends ChangeNotifier {
  int remainingTask = 0;
  int completedTask = 0;

  List<Task> _tasks = [
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

  UnmodifiableListView<Task> get tasks {
    trackingTasks();
    return UnmodifiableListView(_tasks);
  }

  void addTask(Task newTask) {
    _tasks.add(newTask);
    trackingTasks();
    notifyListeners();
  }

  int taskCount() {
    return _tasks.length;
  }

  void trackingTasks() {
    remainingTask = 0;
    completedTask = 0;

    for (Task task in _tasks) {
      if (task.isTaskCompleted == true) {
        completedTask += 1;
      } else {
        remainingTask += 1;
      }
    }
  }

  void updateTask(Task targetTask) {
    targetTask.isTaskCompleted = !targetTask.isTaskCompleted;
    trackingTasks();
    notifyListeners();
  }

  void deleteTask(Task targetTask) {
    _tasks.remove(targetTask);
    trackingTasks();
    notifyListeners();
  }
}

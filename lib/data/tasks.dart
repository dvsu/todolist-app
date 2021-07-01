import 'package:todolist_app/model/task.dart';
import 'package:todolist_app/model/task_color.dart';

class Tasks {
  static List<Task> tasks = [
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

  set addNewTask(Task newTask) {
    tasks.add(newTask);
  }

  List<Task> get getAllTasks => tasks;
}

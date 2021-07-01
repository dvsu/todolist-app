import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist_app/widgets/task_card.dart';
import 'package:todolist_app/theme/task_color.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.011.sh),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'task_title.dart';
import '../models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTitle(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

// return TaskTitle(
// taskTitle: Provider.of<TaskData>(context).tasks[index].name,
// isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
// checkboxCallback: (bool checkboxState) {},
// );
// },
// itemCount: Provider.of<TaskData>(context).tasks.length,
// );

// return TaskTitle(
// taskTitle: widget.tasks[index].name,
// isChecked: widget.tasks[index].isDone,
// checkboxCallback: (bool checkboxState) {
// setState(() {
// widget.tasks[index].toggleDone();
// });
// },
// );

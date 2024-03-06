import 'package:flutter/material.dart';
import 'task_title.dart';
import '../models/Task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     children: [
  //       TaskTitle(taskTitle: tasks[0].name, isChecked: tasks[0].isDone,),
  //       TaskTitle(taskTitle: tasks[1].name, isChecked: tasks[1].isDone,),
  //       TaskTitle(taskTitle: tasks[2].name, isChecked: tasks[2].isDone,),
  //     ],
  //   );
  // }


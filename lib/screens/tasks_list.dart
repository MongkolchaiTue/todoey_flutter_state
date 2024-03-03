import 'package:flutter/material.dart';
import 'task_title.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TasksTitle(),
        TasksTitle(),
        TasksTitle(),
      ],
    );
  }
}
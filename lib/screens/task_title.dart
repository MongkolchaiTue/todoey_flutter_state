import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  const TasksTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('This is a Task.'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {
          print(value);
        },
      ),
    );
  }
}
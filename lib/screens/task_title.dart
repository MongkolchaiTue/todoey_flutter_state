import 'package:flutter/material.dart';

class TasksTitle extends StatefulWidget {

  const TasksTitle({
    super.key,
  });

  @override
  State<TasksTitle> createState() => _TasksTitleState();
}

class _TasksTitleState extends State<TasksTitle> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a Task.',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:  TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: (checkboxState) {
            setState(() {
              isChecked = checkboxState;
            });
            print("check box state2");
          },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({super.key, required this.checkboxState, required this.toggleCheckboxState});

  final bool checkboxState;
  final ValueChanged<bool> toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (bool? newValue) {
        print(checkboxState);
        print(newValue);
        toggleCheckboxState(newValue!);
      },
    );
  }
}
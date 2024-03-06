import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool) checkboxCallback;

  const TaskTitle(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (bool? newValue) {
          checkboxCallback(newValue!);
        },
      ),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   const TaskCheckbox({super.key, required this.checkboxState, required this.toggleCheckboxState});
//   final bool checkboxState;
//   final void Function(bool) toggleCheckboxState;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: (bool? newValue) {
//         print(checkboxState);
//         print(newValue);
//         toggleCheckboxState(newValue!);
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final void Function(bool?) checkboxChange;
  final void Function() listTileDelete;

  const TaskTile({
    super.key,
    required this.isChecked,
    required this.tasktitle,
    required this.checkboxChange,
    required this.listTileDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tasktitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: SizedBox(
        height: 56,
        width: 96,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Checkbox(
                activeColor: Colors.purple,
                value: isChecked,
                onChanged: checkboxChange),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: listTileDelete,
            ),
          ],
        ),
      ),
      // onLongPress: listTileDelete,
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool? checkboxstate;
//   final Function(bool?) chceckboxchange;
//   const TaskCheckbox(
//       {super.key, this.checkboxstate, required this.chceckboxchange});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor: Colors.purple,
//         value: checkboxstate,
//         onChanged: chceckboxchange);
//   }
// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, override_on_non_overriding_member, unused_element

import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool? boolValue) onTapping;
  final void Function() onLongPressCallBack;

  ListTileWidget({
    required this.isChecked,
    required this.taskTitle,
    required this.onTapping,
    required this.onLongPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
          style: TextStyle(
              fontSize: 18,
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onTapping,
      ),
      onLongPress: onLongPressCallBack,
    );
  }
}
     
     
     
     
     
     
     
     
     


// ******************* VoidCallback ************************
     
//       trailing: CheckBox(
//           checkBoxState: isChecked,
//           toggleCheckBox: (bool? checkBoxState) {
//             setState(() {
//               isChecked = checkBoxState!;
//             });
//           }),
//         ),
//   }
// }



// class CheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final void Function(bool? checkBoxState) toggleCheckBox;
//   CheckBox({required this.checkBoxState, required this.toggleCheckBox});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxState,
//       onChanged: toggleCheckBox,
//     );
//   }
// }
// 
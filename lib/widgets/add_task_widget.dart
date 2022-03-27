// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'list_tile_widget.dart';
// import '../models/task.dart';
import '../screen/task_screen.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskWidget extends StatelessWidget {
  // ** previous callback function **
  // final void Function(String value) addTaskCallBack;
  // AddTaskWidget({required this.addTaskCallBack});

  // var myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late String newTask;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text(
            'Add Task',
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 35),
          ),
        ),
        TextField(
          onChanged: (value) {
            newTask = value;
          },
          autofocus: true,
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            // final newTaskTitle = Task(name: newTask;
            Provider.of<TaskProvider>(context, listen: false)
                .addToList(newTask);
            Navigator.pop(context);
          },

          //   setState(() {
          //     widget.addTaskCallBack(newTask);
          //     // myController.clear();
          //   });
          // },

          // setState(() {
          //   tasks.add(Task(name: Text(myController.text).toString()));
          // });

          child: Text(
            'Add',
            // style: Text,
          ),
        )
      ],
    );
  }
}

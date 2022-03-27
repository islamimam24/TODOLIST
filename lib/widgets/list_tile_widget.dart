// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'list_view_widget.dart';
// import 'package:state_management_flutter_master/screen/task_screen.dart';
import '../models/task.dart';

import '../models/task_data.dart';
import 'package:provider/provider.dart';

class ListViewWidgets extends StatelessWidget {
  // bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, TaskDataProvider, child) {
      // ****** TaskDataProvider =  Provider.of<TaskProvider>(context, listen: false) ******

      return ListView.builder(
        itemCount: TaskDataProvider.tasks.length,
        // the current build context which contains the information that tells the children widgets where their parent is in the widget tree so the task list is inside a container whicj is inside the Expanded widget and so on...
        itemBuilder: (context, index) {
          return ListTileWidget(
            taskTitle: TaskDataProvider.tasks[index].name,
            isChecked: TaskDataProvider.tasks[index].isDone,
            onTapping: (bool? checkBoxState) {
              TaskDataProvider.checkOffTask(TaskDataProvider.tasks[index]);

              //   setState(() {
              //     Provider.of<TaskProvider>(context).tasks[index].toggleDone();
              //   });
            },
            onLongPressCallBack: () {
              TaskDataProvider.deleteTask(TaskDataProvider.tasks[index]);
            },
          );
        },
      );
    });
  }
}

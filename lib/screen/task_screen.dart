// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../widgets/list_tile_widget.dart';
import '../widgets/add_task_widget.dart';
import '../models/task_data.dart';
import 'package:provider/provider.dart';

// import 'package:state_management_flutter_master/widgets/list_view_widget.dart';
// import 'package:state_management_flutter_master/widgets/list_tile.dart';

// import 'package:state_management_flutter_master/screen/add_task.dart';

// ignore: use_key_in_widget_constructors

class TaskScreen extends StatelessWidget {
  static String taskScreen = 'task_screen';

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      height: 400,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            )),
        child: AddTaskWidget(),

// *** previous callback function **
        // addTaskCallBack: (value) {
        //   Provider.of<TaskProvider>(context).addToList(value);
        //   Navigator.pop(context);
        // },
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade300,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: buildBottomSheet,
          );
        },
        backgroundColor: Colors.lightBlue.shade300,
        elevation: 10,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100, left: 60, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlue,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'TODOLIST',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${Provider.of<TaskProvider>(context).taskCount} Tasks',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: ListViewWidgets(),
            ),
          ),
        ],
      ),
    );
  }
}

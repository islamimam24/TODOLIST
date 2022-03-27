// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
// import 'package:state_management_flutter_master/screen/add_task.dart';
import '/screen/task_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        initialRoute: TaskScreen.taskScreen,
        routes: {
          TaskScreen.taskScreen: (context) => TaskScreen(),
          // AddTaskScreen.addTask: (context) => AddTaskScreen(),
        },
      ),
    );
  }
}

/// ******************8888  Provider 8888********************
/// 
/// * recommended from google team instead of setState(() => ) but there is no constant method choose fdpentding on what case you have
/// 
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///





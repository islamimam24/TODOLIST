import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'go to the gym'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addToList(String listString) {
    _tasks.add(Task(name: listString));
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  void checkOffTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

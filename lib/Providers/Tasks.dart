import 'package:student_planner/Providers/Task.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Tasks with ChangeNotifier {
  List<Task> tasks = [];
  void AddTask(Task task) {
    final newtask =
        Task(title: task.title, date: task.date, id: task.id, time: task.time);
    tasks.add(newtask);
    notifyListeners();
  }

  void RemoveTask(String id) {
    tasks.remove(id);
    notifyListeners();
  }

  void editTask(index, Task s) {
    tasks[index] = s;
    notifyListeners();
  }

  Task findById(String id) {
    return tasks.firstWhere((prod) => prod.id == id);
  }

  List<Task> get gettasks {
    return [...tasks];
  }
}

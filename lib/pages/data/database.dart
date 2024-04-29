import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

  // initial data
  void createInitialData() {
    toDoList = [
      {"Make Tutorial", false},
      {"Do exercise", false},
    ];
  }

  // load data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}

import 'package:flutter/material.dart';
import 'package:todo_list_flutter/components/task_tile.dart';

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[
        TaskTile(),
        TaskTile(),
        TaskTile(),
       
        
      ]
    );
  }
}
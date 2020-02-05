import 'package:flutter/material.dart';
import 'package:todo_list_flutter/components/task_tile.dart';
import 'package:todo_list_flutter/modules/task.dart';

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  

  List<Task> tasks = [
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(text: tasks[index].name,isChecked: tasks[index].isDone,toggleCheckBox: 
      (checkBoxState){
        setState(() {
          tasks[index].toggleDone();
        });
        
        });

    },
    itemCount: tasks.length,
    );
  }
}
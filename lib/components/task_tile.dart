import 'package:flutter/material.dart';
import 'package:todo_list_flutter/components/task_chach_box.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
  
}

class _TaskTileState extends State<TaskTile> { 
  bool isChecked = false;
  void toggleCheckBox(bool newValue ){
    setState(() {
      isChecked = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal:30.0),
    title: Text('This is a text',
    style: TextStyle(
      decoration:isChecked?TextDecoration.lineThrough:null
    ),
    ),
    trailing: TaskCheckBox(checkedBox: toggleCheckBox,isChecked: isChecked,),
    
    );
  }
}


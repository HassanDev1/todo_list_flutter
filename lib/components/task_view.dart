import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/components/task_tile.dart';

import 'package:todo_list_flutter/modules/task_data.dart';

class TaskView extends StatefulWidget {
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  

  
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(text: Provider.of<TextData>(context).tasks[index].name,
      isChecked: Provider.of<TextData>(context).tasks[index].isDone,toggleCheckBox: 
      (checkBoxState){
        // setState(() {
        //   tasks[index].toggleDone();
        // }
        // );
        
        });

    },
    itemCount: Provider.of<TextData>(context).getDataSize(),
    );
  }
}
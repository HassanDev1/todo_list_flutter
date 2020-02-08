import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/components/task_tile.dart';

import 'package:todo_list_flutter/modules/task_data.dart';

class TaskView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<TextData>(
      builder: (context,taskData, child){
          return ListView.builder(itemBuilder: (context,index){
        return TaskTile(
          onLongPressCallBack:() {taskData.deleteCallBack(taskData.tasks[index]);},
          text: taskData.tasks[index].name,
          isChecked: taskData.tasks[index].isDone,
          toggleCheckBox: 
          (checkBoxState){
          taskData.toggleDone(taskData.tasks[index]);
          
          });

      },
      itemCount: taskData.getDataSize(),
      );
      }
    );
  }
}
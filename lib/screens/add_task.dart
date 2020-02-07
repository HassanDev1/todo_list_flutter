import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/modules/task_data.dart';

class AddScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    String taskTitle;
    return Container(

      child:Column(
        children: <Widget>[
          TextField(
            decoration:InputDecoration(
              hintText:'Add a Task',
              
              
            ),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: ((newValue){
              taskTitle = newValue;
            }),
            
          ),
          SizedBox(height:10.0),
          FlatButton(
            onPressed: (()
            {
              Provider.of<TextData>(context,listen: false).addData(taskTitle);
            Navigator.pop(context);
            }),
          color: Colors.blueAccent,
           child:Text("Add",
           style: TextStyle(
             fontSize: 25.0,
             color:Colors.white

           ),
           ),
          ),
            

      ],
      )
      
    );
  }
}
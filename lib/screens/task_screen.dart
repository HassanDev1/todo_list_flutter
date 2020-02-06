import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_flutter/components/task_view.dart';
import 'package:todo_list_flutter/modules/task_data.dart';
import 'package:todo_list_flutter/screens/add_task.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:(){ 
          showModalBottomSheet(context: context, builder: (context)=>AddScreen());
        },
        child: Icon(Icons.add),
        ),
      backgroundColor: Colors.blueAccent,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0,left:30.0,right:30.0,bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius:30.0,
                    child: Icon(Icons.list,
                    size: 30.0,
                    color: Colors.blueAccent,),
                    ),
                    SizedBox(height:20.0),
                  Text('Day Plan',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize:50.0,
                    fontWeight:FontWeight.w700
                  ),
                  ),
                  SizedBox(height:10.0),
                  Text('${Provider.of<TextData>(context).tasks.length} Tasks',
                  style: TextStyle(
                    fontSize:25.0,
                    color: Colors.white,
                  ),
                  ),
                  

                ],
                ),
            ),
          ),
          Expanded(
                child: Container(
                    decoration:BoxDecoration(
                      color:Colors.white,
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      ),
                      child: TaskView(),
                  ),
                  
              ),
        ],
      )
    );
  }
}




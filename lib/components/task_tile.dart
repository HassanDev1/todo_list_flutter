import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal:30.0),
    title: Text('this is a task'),
    trailing: Checkbox(value: false,
    onChanged: null,),
    
    );
  }
}
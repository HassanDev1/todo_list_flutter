import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget{
  final String text;
  final bool isChecked;
  final Function toggleCheckBox;

  TaskTile({this.text,this.isChecked,this.toggleCheckBox});
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal:30.0),
    title: Text(text,
    style: TextStyle(
      decoration:isChecked?TextDecoration.lineThrough:null
    ),
    ),
    trailing: Checkbox(value: isChecked,
    onChanged:toggleCheckBox
    )
    
    );
  }
}



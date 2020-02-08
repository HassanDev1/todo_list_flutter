import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget{
  final String text;
  final bool isChecked;
  final Function toggleCheckBox;
  final Function onLongPressCallBack;

  TaskTile({this.text,this.isChecked,this.toggleCheckBox, this.onLongPressCallBack});
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      onLongPress: onLongPressCallBack,
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



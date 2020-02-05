import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  
 final bool isChecked ;
 final Function checkedBox;
 TaskCheckBox({this.checkedBox,this.isChecked});
  

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: isChecked,
    onChanged:checkedBox
    );
  }
}
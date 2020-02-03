import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child:Column(
        children: <Widget>[
          TextField(
            decoration:InputDecoration(
              hintText:'Add a Task',
              
            )
          ),
          FlatButton(onPressed: (){

          },
           child:Text("Add") )

      ],)
      
    );
  }
}
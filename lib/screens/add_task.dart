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
              
              
            ),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newValue){
              
            },
            
          ),
          SizedBox(height:10.0),
          FlatButton(onPressed: (){

          },
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
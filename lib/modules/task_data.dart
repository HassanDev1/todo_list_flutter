
import 'package:flutter/material.dart';
import 'package:todo_list_flutter/modules/task.dart';

class TextData extends ChangeNotifier{
  
  List<Task> tasks = [
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
  ];
  
 int getDataSize(){
   return tasks.length;
 }
 
 void addData(String newTask){
   final task = Task(name: newTask==null?'':newTask);
   tasks.add(task);
   notifyListeners();
 }
 
  void toggleDone(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteCallBack(Task task){
    tasks.remove(task);
    notifyListeners();
  }
 
}
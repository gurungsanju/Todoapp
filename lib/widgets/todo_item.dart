import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  child: ListTile(
    onTap: (){ 
      print("Clicked on TodoItem.");
    },
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
    tileColor: Colors.white,
    leading: Icon(Icons.check_box,color: tdbuttoncolor,),
    title: Text('Check Mail',style: TextStyle(fontSize: 16,color: tddarkgray,decoration: TextDecoration.lineThrough),),
  trailing: Container(
    padding: EdgeInsets.all(1),
    margin: EdgeInsets.symmetric(vertical: 2),
    height: 39,
    width: 39,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: IconButton(onPressed: (){
      print("Clicked on delete icon.");
    }, icon: Icon(Icons.delete),
    iconSize: 22,
    color: tdred,
    ),

    
  ),
  ),
    );
  }
}
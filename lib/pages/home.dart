import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constants/colors.dart';
import 'package:todoapp/widgets/todo_item.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Stack(
          children: [
            // Black stroke text
            Text(
              'To Do List',
              style: GoogleFonts.pinyonScript(
                fontSize: 32,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1.5
                  ..color = const Color.fromARGB(255, 216, 148, 250),
              ),
            ),
            // White fill text
            Text(
              'To Do List',
              style: GoogleFonts.pinyonScript(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
       centerTitle: true,
        backgroundColor: tdpurple,

    )
    ,
    body: Container(
      padding:EdgeInsets.symmetric(horizontal: 65,vertical: 25),
      child: Column(
        children: [Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
             border: Border.all(
      color: tdpurple, // your purple color
      width: 1.5,
    ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 14,color: tddarkpurple),
              prefixIcon: Icon(Icons.search,color: tddarkpurple,),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(12),
            ),

          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: tdpurple,
            borderRadius: BorderRadius.circular(20),

          ),
        ),
        ToDoItem(),
        
        ],
        
      ),
    ));
  }
}
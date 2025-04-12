import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/constants/colors.dart';

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

    ));
  }
}
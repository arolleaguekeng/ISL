import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bas() {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'I',
          style: GoogleFonts.poppins(
            color: Colors.red,
          ),
        ),
        Text(
          'S',
          style: GoogleFonts.poppins(
            color: Colors.green,
          ),
        ),
        Text(
          'L ',
          style: GoogleFonts.poppins(),
        ),
        Text(
          '1.0.0',
          style: GoogleFonts.poppins(),
        ),
        Text(
          '  powerded by',
          style: GoogleFonts.poppins(),
        ),
        Text(
          ' Dev',
          style: GoogleFonts.poppins(color: Colors.blue),
        ),
        Text(
          'Pea',
          style: GoogleFonts.poppins(color: Colors.orange),
        ),
      ],
    ),
  );
}

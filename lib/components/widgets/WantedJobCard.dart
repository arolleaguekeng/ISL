import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget wantedJobCard(
    {required Color color, required String name, required Icon iconAsset}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 25),
    width: 200,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: color,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CircleAvatar(
              child: ClipOval(child: iconAsset),
            ),
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          )
        ]),
      ),
    ),
  );
}

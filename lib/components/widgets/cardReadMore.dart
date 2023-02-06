import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cardReadMore() {
  return Card(
    color: Colors.blue,
    // ignore: sort_child_properties_last
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            width: 200,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'How to find a perfect job for you',
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Read');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange,
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Read More',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 40,
          ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    elevation: 10,
  );
}

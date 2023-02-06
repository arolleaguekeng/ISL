import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl/models/CategorieJobModel/categorieJob_data.dart';
import 'package:isl/models/CategorieJobModel/categoriejob.dart';
import 'package:isl/models/JobModel/job_data.dart';

import '../../../models/JobModel/job.dart';
import '../../widgets/cardReadMore.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.transparent;
  List<CategorieJob> selectedJob = [];
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Row(
              children: [],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tips for you',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print('All');
                  },
                  child: Text(
                    'See all',
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: cardReadMore(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Job Recommandation',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print('All');
                  },
                  child: Text(
                    'See all',
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.only(top: 3),
            height: 50,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return buildCard(
                    cjob: CATEGORIESJOB_DATA[index],
                    isSelected: CATEGORIESJOB_DATA[index].isSelected,
                    index: index,
                  );
                },
                separatorBuilder: (_, __) {
                  return const Divider();
                },
                itemCount: CATEGORIESJOB_DATA.length),
          ),
          Container(
            height: 230,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget buildCard(
      {required CategorieJob cjob,
      required bool isSelected,
      required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          CATEGORIESJOB_DATA[index].isSelected =
              !CATEGORIESJOB_DATA[index].isSelected;
          if (CATEGORIESJOB_DATA[index].isSelected == true) {
            selectedJob.add(
              CategorieJob(
                jobs: CATEGORIESJOB_DATA[index].jobs,
                name: CATEGORIESJOB_DATA[index].name,
                isSelected: true,
              ),
            );
          } else if (CATEGORIESJOB_DATA[index].isSelected == false) {
            selectedJob.removeWhere(
                (element) => element.name == CATEGORIESJOB_DATA[index].name);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: cjob.isSelected ? Colors.blue : Colors.transparent,
          border: Border.all(width: 2, color: Colors.blue),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          cjob.name,
          style: GoogleFonts.poppins(
              color: cjob.isSelected ? Colors.white : Colors.blue),
        ),
      ),
    );
  }
}

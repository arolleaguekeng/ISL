import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl/components/widgets/Powerded.dart';
import 'package:isl/models/CategorieJobModel/categorieJob_data.dart';
import 'package:isl/models/CategorieJobModel/categoriejob.dart';
import '../../widgets/Appbarwidget.dart';

class ChoiceJobCategoriePage extends StatefulWidget {
  const ChoiceJobCategoriePage({super.key});

  @override
  State<ChoiceJobCategoriePage> createState() => _ChoiceJobCategoriePageState();
}

class _ChoiceJobCategoriePageState extends State<ChoiceJobCategoriePage> {
  Color _color = Colors.transparent;
  List<CategorieJob> selectedJob = [];
  @override
  void initState() {
    super.initState();
    selectedJob = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(
        backfunc: const BackButton(
          color: Colors.blue,
        ),
        text: Text(
          'What Job you want ?',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
      bottomNavigationBar: bas(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Choose 3-5 job categories and we"ll optimize the job vacancy for you',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 550,
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: CATEGORIESJOB_DATA.length,
                itemBuilder: (BuildContext context, int index) {
                  return jobCard(
                      cjob: CATEGORIESJOB_DATA[index],
                      color: Colors.transparent,
                      index: index,
                      isSelected: CATEGORIESJOB_DATA[index].isSelected);
                },
              ),
            ),
            selectedJob.length > 0
                ? Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: MaterialButton(
                      onPressed: () {
                        print("${selectedJob.length}}");
                      },
                      height: 40,
                      elevation: 0,
                      splashColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Next(${selectedJob.length})",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: 76,
                  ),
          ],
        ),
      ),
    );
  }

  Widget jobCard(
      {required CategorieJob cjob,
      required Color color,
      required bool isSelected,
      required int index}) {
    return GestureDetector(
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: color,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                cjob.isSelected
                    ? Icon(
                        Icons.check_circle,
                        color: Colors.blue[700],
                      )
                    : const Icon(Icons.check_circle_outline, color: Colors.grey)
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: const CircleAvatar(
                child: ClipOval(child: Icon(Icons.add)),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Text(
                        cjob.name,
                        style: GoogleFonts.poppins(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          color = Colors.blue;
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
    );
  }
}

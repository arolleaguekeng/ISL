import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl/components/widgets/Powerded.dart';
import 'package:isl/models/JobModel/job_data.dart';

import '../../models/JobModel/job.dart';
import '../widgets/Appbarwidget.dart';

class ChoiceJobPage extends StatefulWidget {
  const ChoiceJobPage({super.key});

  @override
  State<ChoiceJobPage> createState() => _ChoiceJobPageState();
}

class _ChoiceJobPageState extends State<ChoiceJobPage> {
  Color _color = Colors.transparent;
  List<Job> selectedJob = [];
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
              height: 450,
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: JOB_DATAS.length,
                itemBuilder: (BuildContext context, int index) {
                  return jobCard(
                      job: JOB_DATAS[index],
                      color: Colors.transparent,
                      index: index,
                      isSelected: JOB_DATAS[index].isSelected);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 30,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Next(${selectedJob.length})",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 20),
                    ),
                  ),
                  onPressed: () {
                    print('Next List length :${selectedJob.length}');
                  },
                ),
              ),
            ),
            bas(),
          ],
        ),
      ),
    );
  }

  Widget jobCard(
      {required Job job,
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
                job.isSelected
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
                        job.name,
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
          JOB_DATAS[index].isSelected = !JOB_DATAS[index].isSelected;
          if (JOB_DATAS[index].isSelected == true) {
            selectedJob
                .add(Job(name: job.name, image: "image", isSelected: true));
          } else if (JOB_DATAS[index].isSelected == false) {
            selectedJob.removeWhere(
                (element) => element.name == JOB_DATAS[index].name);
          }
        });
      },
    );
  }
}

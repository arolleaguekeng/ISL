import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl/components/screens/choiceJob.dart';
import '../widgets/Powerded.dart';

import '../widgets/WantedJobCard.dart';

class ChoicePage extends StatefulWidget {
  const ChoicePage({super.key});

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  Color _color1 = Colors.transparent;
  Color _color2 = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                    top: 100, bottom: 10, right: 10, left: 10),
                child: SvgPicture.asset(
                  "assets/svg/searchdefault.svg",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              margin: const EdgeInsets.only(
                right: 5,
                left: 5,
              ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: SvgPicture.asset(
                        "assets/svg/search.svg",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Text(
                      'What are you looking for?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Center(
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _color1 = Colors.blue;
                                _color2 = Colors.transparent;
                              });
                              print('Get this 2');
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return ChoiceJobPage();
                              }));
                            },
                            child: wantedJobCard(
                              color: _color1,
                              name: "I want a Job",
                              iconAsset: const Icon(
                                Icons.work,
                                size: 15,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _color2 = Colors.blue;
                                _color1 = Colors.transparent;
                              });
                              print('Get this 2');
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return ChoiceJobPage();
                              }));
                            },
                            child: wantedJobCard(
                              color: _color2,
                              name: "I want an employée",
                              iconAsset: const Icon(
                                Icons.person_add,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bas(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:isl/components/widgets/Appbarwidget.dart';

class ChoiceEmployePage extends StatefulWidget {
  const ChoiceEmployePage({super.key});

  @override
  State<ChoiceEmployePage> createState() => _ChoiceEmployePageState();
}

class _ChoiceEmployePageState extends State<ChoiceEmployePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(
        backfunc: const BackButton(
          color: Colors.blue,
        ),
        text: Text('What Employee you want ?'),
      ),
      body: SingleChildScrollView(),
    );
  }
}

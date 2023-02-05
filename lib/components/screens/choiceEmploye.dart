import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
      appBar: widgetAppBar(),
      body: SingleChildScrollView(),
    );
  }
}

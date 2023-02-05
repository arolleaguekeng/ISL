import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/Appbarwidget.dart';

class ChoiceJobPage extends StatefulWidget {
  const ChoiceJobPage({super.key});

  @override
  State<ChoiceJobPage> createState() => _ChoiceJobPageState();
}

class _ChoiceJobPageState extends State<ChoiceJobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

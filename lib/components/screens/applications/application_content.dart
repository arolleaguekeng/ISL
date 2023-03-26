import 'package:flutter/material.dart';

class ApplicationContent extends StatefulWidget {
  const ApplicationContent({super.key});

  @override
  State<ApplicationContent> createState() => _ApplicationContentState();
}

class _ApplicationContentState extends State<ApplicationContent> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('data'));
  }
}

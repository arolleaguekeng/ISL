import 'package:flutter/material.dart';
import 'package:isl/components/widgets/Appbarwidget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(
        backfunc: const BackButton(
          color: Colors.black,
        ),
        text: const Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

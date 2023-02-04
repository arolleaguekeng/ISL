import 'package:flutter/material.dart';
import './components/screens/choicePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ILS App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChoicePage(),
    );
  }
}

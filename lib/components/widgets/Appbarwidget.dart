import 'package:flutter/material.dart';

AppBar widgetAppBar() {
  return AppBar(
    title: const Text("GeeksforGeeks"),
    titleSpacing: 00.0,
    centerTitle: true,
    toolbarHeight: 60.2,
    toolbarOpacity: 0.8,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
    ),
    elevation: 0.00,
    backgroundColor: Colors.greenAccent[400],
  );
}

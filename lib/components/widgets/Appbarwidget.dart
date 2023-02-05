import 'package:flutter/material.dart';

AppBar widgetAppBar({required Widget backfunc, required Widget text}) {
  return AppBar(
    leading: backfunc,
    title: text,
    titleSpacing: 00.0,
    centerTitle: true,
    toolbarHeight: 60.2,
    toolbarOpacity: 0.8,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
    ),
    elevation: 1.00,
    backgroundColor: /*Colors.greenAccent[400]*/ Colors.white,
  );
}

import 'package:flutter/material.dart';
import 'package:isl/components/screens/choiceJob.dart';
import 'package:isl/components/screens/choicePage.dart';
import '../../notfoundPage.dart';
import 'route_names.dart';

class CustomRoute {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    var r = MaterialPageRoute(builder: (_) => NotFoundPage());
    switch (settings.name) {
      case choiceRoute:
        r = MaterialPageRoute(builder: (_) => ChoicePage());
        break;
      case choiceJob:
        r = MaterialPageRoute(builder: (_) => ChoiceJobPage());
    }
    return r;
  }
}

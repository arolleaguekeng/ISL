import 'package:flutter/material.dart';
import 'package:isl/components/screens/homePage.dart';
import 'package:isl/components/screens/jobrecomm.dart';
import 'package:isl/services/localisation/localisation.dart';
import './components/screens/choicePage.dart';
import 'components/routes/custum_route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'services/localisation/localization_constant.dart';

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
      supportedLocales: [
        Locale('fr', 'FR'),
        Locale('en', 'US'),
      ],
      localizationsDelegates: [
        DemoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (locale.languageCode == deviceLocale!.languageCode &&
              locale.countryCode == deviceLocale.countryCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      home: HomePage(),
      onGenerateRoute: CustomRoute.allRoutes,
    );
  }
}

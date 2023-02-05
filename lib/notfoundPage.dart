import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:isl/components/widgets/Appbarwidget.dart';

class NotFoundPage extends StatefulWidget {
  const NotFoundPage({super.key});

  @override
  State<NotFoundPage> createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(
        backfunc: const BackButton(
          color: Colors.blue,
        ),
        text: const Text('Not found Page'),
      ),
      body: const Center(
        child: Text('Not Found Page'),
      ),
    );
  }
}

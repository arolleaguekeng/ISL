import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ApplicationContent extends StatefulWidget {
  const ApplicationContent({super.key});

  @override
  State<ApplicationContent> createState() => _ApplicationContentState();
}

class _ApplicationContentState extends State<ApplicationContent> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

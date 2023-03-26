import 'package:flutter/material.dart';
import 'package:isl/components/screens/applications/application_content.dart';

class ApplicationScreen extends StatelessWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              flex: 5,
              child: ApplicationContent(),
            ),
          ],
        ),
      ),
    );
  }
}

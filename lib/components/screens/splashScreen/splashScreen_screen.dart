import 'package:flutter/material.dart';
import 'package:isl/components/screens/splashScreen/splashScreen_content.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
              child: SplashContent(),
            ),
          ],
        ),
      ),
    );
  }
}

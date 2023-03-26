import 'package:flutter/material.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({super.key});

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/png/iuc.png",
              fit: BoxFit.cover,
              height: 300,
              width: 300,
            ),
            CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 2,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:isl/components/screens/Profiles/profile_Content.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              child: ProfileContent(),
            ),
          ],
        ),
      ),
    );
  }
}

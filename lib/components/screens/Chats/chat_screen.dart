import 'package:flutter/material.dart';
import 'package:isl/components/screens/Chats/chat_content.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
              child: ChatContent(),
            ),
          ],
        ),
      ),
    );
  }
}

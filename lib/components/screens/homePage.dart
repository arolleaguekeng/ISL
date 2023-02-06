import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:isl/components/screens/HomePages/home.dart';
import 'package:isl/components/screens/HomePages/list.dart';
import 'package:isl/components/screens/HomePages/message.dart';
import 'HomePages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  final List<Widget> screens = [
    Home(),
    ListPage(),
    MessagePage(),
    ProfilePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPage = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.person_outline,
          color: Colors.black,
        ),
        title: Text(
          'Hello Adam',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 1.00,
        backgroundColor: /*Colors.greenAccent[400]*/ Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              print('Notification');
            },
            icon: const Icon(Icons.notifications, color: Colors.lightBlue),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: GNav(
          gap: 4,
          color: Colors.blue,
          activeColor: Colors.blue,
          tabBackgroundColor: Colors.grey.shade200,
          padding: const EdgeInsets.all(10),
          onTabChange: (index) {
            setState(() {
              currentPage = screens[index];
              currentTab = index;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.list,
              text: 'Your',
            ),
            GButton(
              icon: Icons.message,
              text: 'Message',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ],
        ),
      ),
      body: PageStorage(
        bucket: bucket,
        child: currentPage,
      ),
    );
  }
}

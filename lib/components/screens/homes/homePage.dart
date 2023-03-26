import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:isl/components/screens/Chats/chat_screen.dart';
import 'package:isl/components/screens/Profiles/profile_Screen.dart';
import 'package:isl/components/screens/applications/application_screen.dart';
import 'package:isl/components/screens/homes/Home_Screen.dart';
import '../../widgets/navbarUser.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  final List<Widget> screens = [
    HomeScreen(),
    ApplicationScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPage = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBarUser(),
      drawerScrimColor: Colors.grey,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
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
              text: 'Applications',
            ),
            GButton(
              icon: Icons.message,
              text: 'Chat',
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

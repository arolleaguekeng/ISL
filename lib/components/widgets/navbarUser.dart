import 'package:flutter/material.dart';

class NavBarUser extends StatefulWidget {
  const NavBarUser({super.key});

  @override
  State<NavBarUser> createState() => _NavBarUserState();
}

class _NavBarUserState extends State<NavBarUser> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            accountName: Row(
              children: [
                Text(
                  'Etudiant(e) :',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'LYNDERLANIE',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.white70),
                ),
              ],
            ),
            accountEmail: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Text(
                        'Email :',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'lanie@gmail.com',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/png/profile.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

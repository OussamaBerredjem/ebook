import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:ebook/screens/Chat.dart';
import 'package:ebook/screens/home_screeen.dart';
import 'package:ebook/screens/library_screen.dart';
import 'package:ebook/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AccuelScreen extends StatefulWidget {
  const AccuelScreen({super.key});

  @override
  State<AccuelScreen> createState() => _AccuelScreenState();
}

class _AccuelScreenState extends State<AccuelScreen> {
  int index = 0;
  List<Widget> screens = [
    HomeScreeen(),
    Chat(),
    LibraryScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (position) {
            setState(() {
              index = position;
            });
          },
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          fixedColor: Colors.deepPurpleAccent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(index == 0
                    ? BootstrapIcons.house_fill
                    : BootstrapIcons.house),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(index == 1
                    ? BootstrapIcons.chat_fill
                    : BootstrapIcons.chat),
                label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(index == 2
                    ? CupertinoIcons.book_fill
                    : CupertinoIcons.book),
                label: "Library"),
            BottomNavigationBarItem(
                icon: Icon(index == 3 ? Icons.person : CupertinoIcons.person),
                label: "Profile")
          ],
        ));
  }
}

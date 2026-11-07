import 'package:audio_library/features/home/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex =index;
    });
  }
  final List<Widget> _pages =[

   HomeScreen(),
         Center(
            child: Text(
              'It Will Be Available Soon .....',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              )
            ),
         Center(
            child: Text(
              'It Will Be Available Soon .....',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              )
            ),
          Center(
            child: Text(
              'It Will Be Available Soon .....',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              )
            ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 12.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.0),
            color: Colors.black
          ),
          child: GNav(
            gap: 8.0,
            color: Colors.white,
            activeColor: Colors.grey,
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 14.0,
              vertical: 26.0
            ),
            debug: false,
            rippleColor: Colors.white10,
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
               tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',

            ),
          GButton(
            icon: Icons.library_add,
             text: 'Library',
            ),
          GButton(
            icon: Icons.explore,
             text: 'Explore',
            ),
          GButton(
            icon: Icons.person,
             text: 'Profile',
            ),
               ],
          ),
        ),
      )
    );
  }
}
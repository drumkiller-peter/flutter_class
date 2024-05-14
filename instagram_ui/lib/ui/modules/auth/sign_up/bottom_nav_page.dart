import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key, required this.child});

  final StatefulNavigationShell child;

  ///
  // final Widget child;

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
            items: [
              _setBottomNavItem(
                currentIndex == 0,
                'Home',
                Icons.dashboard_outlined,
              ),
              _setBottomNavItem(
                currentIndex == 1,
                'Add Event',
                Icons.add_business_outlined,
              ),
              _setBottomNavItem(
                currentIndex == 2,
                'Events list',
                Icons.event,
              ),
              _setBottomNavItem(
                currentIndex == 3,
                'Message',
                Icons.chat_bubble_outline_rounded,
              ),
              _setBottomNavItem(
                currentIndex == 4,
                'More',
                Icons.person_3_outlined,
              ),
            ],
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              widget.child.goBranch(index);
            },
            currentIndex: widget.child.currentIndex),
      ),
    );
  }

  BottomNavigationBarItem _setBottomNavItem(
      bool isSelected, String label, IconData icons) {
    return BottomNavigationBarItem(
      icon: Icon(icons),
      label: label,
    );
  }
}

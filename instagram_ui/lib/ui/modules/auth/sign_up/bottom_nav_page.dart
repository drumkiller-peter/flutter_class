import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.child});

  final StatefulNavigationShell child;

  ///
  // final Widget child;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              ),
              _setBottomNavItem(
                currentIndex == 1,
                'My Library',
              ),
              _setBottomNavItem(
                currentIndex == 2,
                'Search',
              ),
              _setBottomNavItem(
                currentIndex == 3,
                'Bible',
              ),
              _setBottomNavItem(
                currentIndex == 4,
                'More',
              ),
            ],
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            // onTap: (int idx) => _onItemTapped(idx, context),
            onTap: (index) {
              widget.child.goBranch(index);

            },
            currentIndex: widget.child.currentIndex),
      ),
    );
  }

  BottomNavigationBarItem _setBottomNavItem(bool isSelected, String label) {
    return BottomNavigationBarItem(
      icon: const Icon(Icons.home),
      label: label,
    );
  }

}

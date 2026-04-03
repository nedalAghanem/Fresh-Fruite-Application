// lib/screens/main_screen.dart (معدل)
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits/bottom_navigation/home_screen.dart';
import 'package:fresh_fruits/bottom_navigation/categories_screen.dart';
import 'package:fresh_fruits/bottom_navigation/cart_screen.dart';
import 'package:fresh_fruits/bottom_navigation/favorites_screen.dart';
import 'package:fresh_fruits/bottom_navigation/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 75,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: const Color(0xFFFEC54B),
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/ic_home_selected.svg'),
              activeIcon: SvgPicture.asset('assets/images/ic_home.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/ic_transfer.svg'),
              activeIcon: SvgPicture.asset('assets/images/ic_transfer_selected.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/ic_shoping.svg'),
              activeIcon: SvgPicture.asset('assets/images/ic_shoping_selected.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite_border_outlined),
              activeIcon: const Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              activeIcon: const Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantify/constants/app_color.dart';
import 'package:plantify/screens/mainScreens/cart_screen.dart';
import 'package:plantify/screens/mainScreens/home_screen.dart';
import 'package:plantify/screens/mainScreens/profile_screen.dart';
import 'package:plantify/screens/mainScreens/wishlist_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;

  final List<Widget> pages = const[
    HomeScreen(),
    WishlistScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: 
      Stack(
        children:[
          pages[selectedIndex],
          Positioned(
            left: 20,
          bottom: 20,
          right: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15 ),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.2),
                  ),
                ),
                child: NavigationBar(
                  selectedIndex: selectedIndex,
                    onDestinationSelected: (index) {
                    setState((){
                      selectedIndex = index;
                    });
                    },
                    backgroundColor: Colors.transparent,
                    indicatorColor: Colors.white.withValues(alpha: 0.1),
                    surfaceTintColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    height: 10,
                    destinations: const[
                      NavigationDestination(icon: Icon(Icons.home),selectedIcon: Icon(Icons.home), label: '',),
                      NavigationDestination(icon: Icon(Icons.favorite), label: '',),
                      NavigationDestination(icon: Icon(Icons.shopping_cart), label: ''),
                      NavigationDestination(icon: Icon(Icons.person), label: ''),
                    ]
                ),
              ),
            ),
          ),
        ),
    ]
      ),
      );
  }
}

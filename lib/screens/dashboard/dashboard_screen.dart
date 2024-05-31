import 'package:flutter/material.dart';
import 'package:milk_delivery_flutter_user_app/screens/favourite/favourite_screen.dart';
import 'package:milk_delivery_flutter_user_app/screens/home/home_screen.dart';
import 'package:milk_delivery_flutter_user_app/screens/notification/notification_screen.dart';
import 'package:milk_delivery_flutter_user_app/screens/order/order_screen.dart';
import 'package:milk_delivery_flutter_user_app/screens/profile/profile_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var _currentIndex = 0;

  final _screens = const [
    HomeScreen(),
    OrderScreen(),
    FavouriteScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Order
          SalomonBottomBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text("Order"),
            selectedColor: Colors.blue,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.notifications),
            title: const Text("Notifications"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}

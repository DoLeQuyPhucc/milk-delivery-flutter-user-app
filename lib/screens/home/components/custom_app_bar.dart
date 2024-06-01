import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
      child: AppBar(
        title: ClipRect(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFFf0f1f5),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 0.0), // Adjust padding here
            child: IconButton(
              icon: const Icon(Icons.qr_code),
              iconSize: 30.0, // Increase the icon size
              onPressed: () {
                // Implement your filter functionality here
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0), // Adjust padding here
            child: Stack(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.notifications),
                  iconSize: 30.0, // Increase the icon size
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/onboarding');
                  },
                ),
                Positioned(
                  right: 7,
                  top: 7,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
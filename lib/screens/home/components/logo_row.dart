import 'package:flutter/material.dart';

class LogoRow extends StatelessWidget {
  const LogoRow({super.key});

  @override
  Widget build(BuildContext context) {
    const BorderRadius borderRadiusLogo = BorderRadius.only(
      topLeft: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    );

    final Border borderLogo = Border.all(color: Colors.blue, width: 1);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            border: borderLogo,
            borderRadius: borderRadiusLogo, // Adjust this value as needed
          ),
          child: ClipRRect(
            borderRadius: borderRadiusLogo, // This should match the Container's borderRadius
            child: Image.asset(
              'assets/th-true-milk-logo.jpg',
              height: 70,
              width: 70,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: borderLogo,
            borderRadius: borderRadiusLogo, // Adjust this value as needed
          ),
          child: ClipRRect(
            borderRadius: borderRadiusLogo, // This should match the Container's borderRadius
            child: Image.asset(
              'assets/vinamilk-logo.jpg',
              fit: BoxFit.fill,
              height: 70,
              width: 70,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: borderLogo,
            borderRadius: borderRadiusLogo, // Adjust this value as needed
          ),
          child: ClipRRect(
            borderRadius: borderRadiusLogo, // This should match the Container's borderRadius
            child: Image.asset(
              'assets/lothamilk.jpg',
              height: 70,
              width: 70,
            ),
          ),
        ),
      ],
    );
  }
}
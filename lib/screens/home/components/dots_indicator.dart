import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  final List<String> bannerImages;
  final CarouselController controller;
  final int current;

  const DotsIndicator({super.key,
    required this.bannerImages,
    required this.controller,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: bannerImages.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => controller.animateToPage(entry.key),
          child: Container(
            width: 8.0,
            height: 8.0,
            margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black)
                  .withOpacity(current == entry.key ? 0.9 : 0.4),
            ),
          ),
        );
      }).toList(),
    );
  }
}
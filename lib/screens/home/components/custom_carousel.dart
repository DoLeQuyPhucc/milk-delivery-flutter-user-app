import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatelessWidget {
  final List<String> bannerImages;
  final CarouselController controller;
  final Function(int) onPageChanged;

  const CustomCarousel({super.key,
    required this.bannerImages,
    required this.controller,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(15));
    
    return SizedBox(
      height: 200,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Stack(
          children: [
            CarouselSlider(
              items: bannerImages.map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: const BoxDecoration(
                        borderRadius: borderRadius,
                      ),
                      child: ClipRRect(
                        borderRadius: borderRadius,
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              carouselController: controller,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
                viewportFraction: 0.83,
                onPageChanged: (index, reason) {
                  onPageChanged(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
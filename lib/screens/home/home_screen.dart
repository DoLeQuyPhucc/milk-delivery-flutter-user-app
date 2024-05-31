import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:milk_delivery_flutter_user_app/screens/home/components/custome_app_bar.dart';

import 'components/custom_carousel.dart';
import 'components/dots_indicator.dart';
import 'components/logo_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Border radius for the banner
  final BorderRadius borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  );

  // Border radius for the logo
  final BorderRadius borderRadiusLogo = const BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );

  // Border for the logo
  final Border borderLogo = Border.all(color: Colors.blue, width: 1);

  final List<String> bannerImages = [
    'assets/banner01.jpg',
    'assets/banner02.jpg',
    'assets/banner03.jpg',
    'assets/banner04.jpg',
    'assets/banner05.jpg',
  ];

  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 40.0),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
          child: Column(
            children: [
              CustomCarousel(
                bannerImages: bannerImages,
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              DotsIndicator(
                bannerImages: bannerImages,
                controller: _controller,
                current: _current,
              ),
              const SizedBox(height: 10),
              const LogoRow(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:milk_delivery_flutter_user_app/screens/home/components/custom_app_bar.dart';

import 'components/custom_carousel.dart';
import 'components/dots_indicator.dart';
import 'components/logo_row.dart';
import 'components/product_sale.dart';
import 'components/product_sale_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> bannerImages = [
    'assets/banner01.jpg',
    'assets/banner02.jpg',
    'assets/banner03.jpg',
    'assets/banner04.jpg',
    'assets/banner05.jpg',
  ];

  final List<Widget> promotionCards = [
    const PromotionCard(
      imagePath: 'assets/banner01.jpg',
      productName: 'TH True Milk Hilo',
      volume: '180 ml',
      discount: '10%',
      price: '400.000 VND',
      oldPrice: '450.000 VND',
      rating: 4,
    ),
    // Add more PromotionCard widgets here
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
              const SizedBox(height: 30),
              PromotionSection(promotionCards: promotionCards),
            ],
          ),
        ),
      ),
    );
  }
}

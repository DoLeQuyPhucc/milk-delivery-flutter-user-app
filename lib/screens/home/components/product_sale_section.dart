import 'package:flutter/material.dart';

class PromotionSection extends StatelessWidget {
  final List<Widget> promotionCards;

  const PromotionSection({super.key, required this.promotionCards});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Khuyến Mãi Sập Sàn',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Xem thêm',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150, // Adjust the height to fit your design
          child: PageView.builder(
            itemCount: promotionCards.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onHorizontalDragEnd: (details) {
                  if (details.primaryVelocity! < 0) {
                    // User swiped Left
                    if (index < promotionCards.length - 1) {
                      PageController().animateToPage(
                        index + 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  } else if (details.primaryVelocity! > 0) {
                    // User swiped Right
                    if (index > 0) {
                      PageController().animateToPage(
                        index - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  }
                },
                child: promotionCards[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
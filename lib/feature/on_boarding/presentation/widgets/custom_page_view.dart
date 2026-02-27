import 'package:flutter/material.dart';
import 'package:fruit_market/feature/on_boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          title: 'E Shopping',
          subTitle: 'Explore top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/images/onboarding2.png',
          title: 'Dilivery On The Way',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: 'assets/images/onboarding3.png',
          title: 'Dilivery Arrived',
          subTitle: 'Order is arrived at your place',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/space.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subTitle, this.image});
  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 19),
        SizedBox(height: 200, child: Image.asset(image!)),
        const VerticalSpace(value: 3.5),
        Text(
          title!,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xff2f2e41),
          ),
        ),
        const VerticalSpace(value: 1.5),

        Text(
          subTitle!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff78787c),
          ),
        ),
      ],
    );
  }
}

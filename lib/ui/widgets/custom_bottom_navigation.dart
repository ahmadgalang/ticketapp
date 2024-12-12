import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomButtonNavigation extends StatelessWidget {

  final String imageUrl;
  final bool isSelected;

  const CustomButtonNavigation({super.key, required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (kDebugMode) {
          print('object');
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                color: isSelected ? kPrimaryColor : kTransparant),
          )
        ],
      ),
    );
  }
}

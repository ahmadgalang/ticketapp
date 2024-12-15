import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class PhotoItem extends StatelessWidget {

  final String imageUrl;

  const PhotoItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover),
      ),
    );
  }
}

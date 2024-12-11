import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomButtonNavigation extends StatelessWidget {
  const CustomButtonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print('object');
                }
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/icon-home.png'),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print('object');
                }
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/icon-transaction.png'),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print('object');
                }
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/icon-card.png'),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print('object');
                }
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/assets/icon-settings.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

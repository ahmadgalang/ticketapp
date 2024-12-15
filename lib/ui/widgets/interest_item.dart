import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String itemName;

  const InterestItem({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 3),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 6),
              height: 16,
              width: 16,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/icon-check.png'),
                ),
              ),
            ),
            Text(
              itemName,
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      ),
    );
  }
}

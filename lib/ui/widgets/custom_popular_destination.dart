import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomPopularDestination extends StatelessWidget {
  const CustomPopularDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      height: 323,
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 220,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('lib/assets/image-destination-satu.png'),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 54.5,
                height: 30,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultRadius),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/icon-star.png'),
                        ),
                      ),
                    ),
                    Text(
                      '4.7',
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lake Ciliwung',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Tangerang',
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

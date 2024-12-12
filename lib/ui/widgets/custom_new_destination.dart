import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';

class CustomNewDestination extends StatelessWidget {
  const CustomNewDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 90,
        margin: EdgeInsets.fromLTRB(24, 0, 24, 16),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('lib/assets/image-destination-satu.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'data',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  Text(
                    'data',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                ],
              ),
            ),
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/icon-star.png'),
                ),
              ),
            ),
            Text('4.6')
          ],
        ),
      ),
    );
  }
}

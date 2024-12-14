import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';

class CustomNewDestination extends StatelessWidget {

  final String imageUrl;
  final String nameDestionation;
  final String locationDestionation;
  final double rating;

  const CustomNewDestination({super.key, required this.imageUrl, required this.nameDestionation, required this.locationDestionation, required this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-page');
      },
      child: Container(
        height: 90,
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 16),
        padding: const EdgeInsets.all(10),
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
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nameDestionation,
                      style:
                          blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                          overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      locationDestionation,
                      style:
                          greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                          overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Row(
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
                const SizedBox(width: 5,),
                Text(rating.toString(),
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: bold))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

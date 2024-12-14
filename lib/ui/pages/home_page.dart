import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/widgets/custom_new_destination.dart';
import 'package:ticketapp/ui/widgets/custom_popular_destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header() {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmad,\nGalang Afianto',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Where to fly today?',
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                )
              ],
            ),
          ),
          const SizedBox(height: 18),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('lib/assets/image-profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget popularDestination() {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 24, right: 5),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomPopularDestination(),
            CustomPopularDestination(),
            CustomPopularDestination(),
          ],
        ),
      ),
    );
  }

  Widget newDestionation() {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 30, left: 24, bottom: 16),
              child: Text(
                'New This Year',
                style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
              ),
            ),
          ),
          const CustomNewDestination(
            imageUrl: 'lib/assets/image-destination-satu.png',
            nameDestionation: 'Lake Ciliwung',
            locationDestionation: 'Tangerang',
            rating: 4.9,
          ),
          const CustomNewDestination(
            imageUrl: 'lib/assets/image-destination-empat.png',
            nameDestionation: 'Lake Ciliwung',
            locationDestionation: 'Tangerang',
            rating: 4.9,
          ),
          const CustomNewDestination(
            imageUrl: 'lib/assets/image-destination-tiga.png',
            nameDestionation: 'Lake Ciliwung',
            locationDestionation: 'Tangerang',
            rating: 4.9,
          ),
          const CustomNewDestination(
            imageUrl: 'lib/assets/image-destination-dua.png',
            nameDestionation:
                'Lake CiliwungCiliwungCiliwungCiliwungCiliwungCiliwungCiliwung',
            locationDestionation: 'Tangerang',
            rating: 4.9,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [header(), popularDestination(), newDestionation()],
    );
  }
}

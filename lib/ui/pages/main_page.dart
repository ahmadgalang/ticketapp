import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget header() {
    Widget title() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Howdy,\nKezia Anne',
              style:
                  blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
            Text(
              'Where to fly today?',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
            ),
          ],
        ),
      );
    }

    Widget profile() {
      return Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('lib/assets/image-profile.png'),
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [title(), profile()],
      ),
    );
  }

  Widget favoritDestionation() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 24),
            padding: const EdgeInsets.all(10),
            height: 323,
            width: 200,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                              'lib/assets/image-destination-tiga.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(defaultRadius)),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 54.5,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(defaultRadius),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                            fontSize: 14, fontWeight: light),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget popularDestination() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.only(top: 515),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius)),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                                'lib/assets/image-destination-satu.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius)),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                                'lib/assets/image-destination-satu.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 16),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius)),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                                'lib/assets/image-destination-satu.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customNavigation() {
    return const CustomButtonNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            customNavigation(),
          ],
        ),
      ),
    );
  }
}

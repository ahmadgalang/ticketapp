import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/widgets/custom_button.dart';
import 'package:ticketapp/ui/widgets/interest_item.dart';
import 'package:ticketapp/ui/widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('lib/assets/image-destination-satu.png'),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.4), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                width: 108,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/icon-emblem.png'),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, top: 260, right: defaultMargin),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Tangerang',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: light),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Row(
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
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.7',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      Widget priceButton() {
        return Container(
          margin: EdgeInsets.only(
              top: 10, left: defaultMargin, right: defaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'IDR. 5.000.000',
                    style:
                        blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Per Orang',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  ),
                ],
              ),
              CustomButton(
                onTap: () {},
                buttonName: 'Book Now',
                width: 170,
              )
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 370,
                bottom: 10),
            width: double.infinity,
            height: 446,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                color: kWhiteColor),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Note : About
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'About',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: light, height: 1.8),
                    ),
                    // Note : Photos
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 20),
                      child: Text(
                        'Photos',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PhotoItem(
                            imageUrl: 'lib/assets/image-destination-satu.png',
                          ),
                          PhotoItem(
                            imageUrl: 'lib/assets/image-destination-dua.png',
                          ),
                          PhotoItem(
                            imageUrl: 'lib/assets/image-destination-tiga.png',
                          ),
                          PhotoItem(
                            imageUrl: 'lib/assets/image-destination-empat.png',
                          )
                        ],
                      ),
                    ),
                    // Note : Interests
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 20),
                      child: Text(
                        'Interests',
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                    ),
                    const Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                InterestItem(itemName: 'Kids Park'),
                                InterestItem(itemName: 'Kids Park'),
                              ],
                            ),
                            Row(
                              children: [
                                InterestItem(itemName: 'Kids Park'),
                                InterestItem(itemName: 'Kids Park'),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          priceButton()
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [backgroundImage(), content()],
          ),
        ),
      ),
    );
  }
}

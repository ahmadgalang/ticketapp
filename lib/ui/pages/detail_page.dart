import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';

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
              margin: const EdgeInsets.only(left: 24, top: 300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style:
                        whiteTextStyle.copyWith(fontSize: 24, fontWeight: bold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Tangerang',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: light),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget cardInfo() {
      return Container(
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, top: 400, bottom: 30),
        width: double.infinity,
        height: 446,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
            color: kWhiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Text(
                'About',
                style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
            ),
            Text(
              'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: light),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 6),
              child: Text(
                'Photos',
                style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
          children: [
            Stack(
              children: [backgroundImage(), cardInfo()],
            ),
          ],
        ),
      ),
    );
  }
}

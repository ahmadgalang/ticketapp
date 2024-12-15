import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/widgets/custom_button.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cardBonus() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 151),
        width: 300,
        height: 200,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/image-card.png'),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 2),
                color: Color.fromARGB(65, 225, 0, 255),
                spreadRadius: 0,
              )
            ]),
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Ahmad GalangGalangGalang',
                          style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: medium,
                              overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('lib/assets/logo-splashscreen.png'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'IDR. 700.000.000',
                          style: whiteTextStyle.copyWith(
                              fontSize: 26,
                              fontWeight: medium,
                              overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget title() {
      return Text(
        'Big Bonus',
        style: blackTextStyle.copyWith(
          fontSize: 32,
          fontWeight: semiBold,
        ),
      );
    }

    Widget description() {
      return Text(
        'We give you early credit so that\nyou can buy a flight ticket',
        style: greyTextStyle.copyWith(
          fontSize: 16,
          fontWeight: light,
        ),
        textAlign: TextAlign.center,
      );
    }

    Widget startFlyNowButton() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: CustomButton(
          buttonName: 'Start Fly Now',
          width: 220,
          onTap: () {
            Navigator.pushNamed(context, '/main');
          },
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Center(
          child: Column(
            children: [
              cardBonus(),
              title(),
              const SizedBox(height: 10),
              description(),
              startFlyNowButton()
            ],
          ),
        ),
      ),
    );
  }
}

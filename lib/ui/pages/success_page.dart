import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/pages/main_page.dart';
import 'package:ticketapp/ui/widgets/custom_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget success() {
      return Column(
        children: [
          Container(
            height: 150,
            margin:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/image-success.png'),
              ),
            ),
          ),
          Text(
            'Well Booked',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Are you ready to explore the new\nworld of experiences?',
            textAlign: TextAlign.center,
            style: greyTextStyle.copyWith(
                fontSize: 14, fontWeight: light, height: 2),
          )
        ],
      );
    }

    Widget mybookingsButton() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 50),
        width: 220,
        child: CustomButton(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => MainPage(),
                ),
                (route) => false,
              );
            },
            buttonName: 'My Bookings'),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [success(), mybookingsButton()],
        ),
      ),
    );
  }
}

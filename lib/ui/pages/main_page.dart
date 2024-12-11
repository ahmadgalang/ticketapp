import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/pages/home_page.dart';
import 'package:ticketapp/ui/widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget buildContent(){
    return HomePage();
  }

  Widget customButtonNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, bottom: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child:
            const Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              CustomButtonNavigation(imageUrl: 'lib/assets/icon-home.png',),
              CustomButtonNavigation(imageUrl: 'lib/assets/icon-card.png',),
              CustomButtonNavigation(imageUrl: 'lib/assets/icon-transaction.png',),
              CustomButtonNavigation(imageUrl: 'lib/assets/icon-settings.png',),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            buildContent(),
            customButtonNavigation(),
          ],
        ),
      ),
    );
  }
}

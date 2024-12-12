import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/pages/home_page.dart';
import 'package:ticketapp/ui/widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget buildContent(){
    return const HomePage();
  }

  Widget customNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.only(bottom: 30, left: 24, right: 24, top: 50),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)
        ),child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtonNavigation(imageUrl: 'lib/assets/icon-home.png',isSelected: true,),
            CustomButtonNavigation(imageUrl: 'lib/assets/icon-transaction.png'),
            CustomButtonNavigation(imageUrl: 'lib/assets/icon-card.png'),
            CustomButtonNavigation(imageUrl: 'lib/assets/icon-settings.png'),
          ],
        ),
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
            customNavigation(),
          ],
        ),
      ),
    );
  }
}

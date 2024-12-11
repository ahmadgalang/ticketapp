import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/pages/home_page.dart';
import 'package:ticketapp/ui/widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget buildContent(){
    return HomePage();
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
            buildContent(),
            customNavigation(),
          ],
        ),
      ),
    );
  }
}

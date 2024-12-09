import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      height: 55,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius)),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/bonus-page');
        },
        child: Text(
          'Get Started',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

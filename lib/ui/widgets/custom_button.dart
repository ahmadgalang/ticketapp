import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final Function() onTap;
  final String buttonName;

  const CustomButton(
      {super.key,
      this.height = 55,
      this.width = double.infinity,
      required this.onTap,
      required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius)),
        ),
        onPressed: onTap,
        child: Text(
          buttonName,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

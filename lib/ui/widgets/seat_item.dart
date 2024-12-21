import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';

class SeatItem extends StatelessWidget {
  final int status;

  const SeatItem({super.key, required this.status});

  backgroundColor() {
    switch (status) {
      case 1:
        return kUnvailableColor;
      case 2:
        return kSelectedColor;
      case 3:
        return kAvailableColor;
      default:
        break;
    }
  }

  borderColor() {
    switch (status) {
      case 1:
        return kUnvailableColor;
      case 2:
        return kSelectedColor;
      case 3:
        return kPrimaryColor;
      default:
        break;
    }
  }

  child(){
    switch (status) {
      case 1:
        return SizedBox();
      case 2:
        return Center(
          child: Text('YOU' , style: whiteTextStyle.copyWith(
            color: kWhiteColor,
            fontWeight: semiBold
          ),),
        );
      case 3:
        return SizedBox();
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor(),
        border: Border.all(
          color: borderColor()
        )
      ),
      child: child(),
    );
  }
}

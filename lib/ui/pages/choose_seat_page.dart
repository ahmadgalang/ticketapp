import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
        ),
      );
    }

    Widget statusSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: kGreyColor),
                    image: DecorationImage(
                      image: AssetImage('lib/assets/icon-unavailable.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    'Unvailable',
                    style:
                        blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/icon-selected.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    'Selected',
                    style:
                        blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/icon-available.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    'Available',
                    style:
                        blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget chooseSeat(){
      return Container(
        height: 500,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('A')),
                 Expanded(child: Text('A')),
                Expanded(child: Text('A')),
                 Expanded(child: Text('A')),
                 Expanded(child: Text('A')),
              ],
            )
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(),
            statusSeat(),
            chooseSeat()
          ],
        ),
      ),
    );
  }
}

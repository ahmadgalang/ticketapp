import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
        ),
      );
    }

    Widget statusSeat() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 16,
                  height: 16,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: kGreyColor),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/icon-unavailable.png'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
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
                  margin: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/icon-selected.png'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
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
                  margin: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/icon-available.png'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
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

    Widget chooseSeat() {
      return Container(
        height: 500,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'A',
                        style: greyTextStyle.copyWith(color: kGreyColor),
                      ),
                    )),
                SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'B',
                        style: greyTextStyle.copyWith(color: kGreyColor),
                      ),
                    )),
                const SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(''),
                    )),
                SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                        child: Text(
                      'C',
                      style: greyTextStyle.copyWith(color: kGreyColor),
                    ))),
                SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'D',
                        style: greyTextStyle.copyWith(color: kGreyColor),
                      ),
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text('1', style: greyTextStyle.copyWith(),)),
                  ),
                  SeatItem(
                    status: 3,
                  ),
                  SeatItem(
                    status: 3,
                  ),
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text('1', style: greyTextStyle.copyWith(),)),
                  ),
                  SeatItem(
                    status: 3,
                  ),
                  SeatItem(
                    status: 3,
                  ),
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text('1', style: greyTextStyle.copyWith(),)),
                  ),
                  SeatItem(
                    status: 3,
                  ),
                  SeatItem(
                    status: 3,
                  ),
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text('1', style: greyTextStyle.copyWith(),)),
                  ),
                  SeatItem(
                    status: 3,
                  ),
                  SeatItem(
                    status: 3,
                  ),
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text('1', style: greyTextStyle.copyWith(),)),
                  ),
                  SeatItem(
                    status: 3,
                  ),
                  SeatItem(
                    status: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [title(), statusSeat(), chooseSeat()],
        ),
      ),
    );
  }
}

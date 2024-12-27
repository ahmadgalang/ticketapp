import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/widgets/checkout_item.dart';
import 'package:ticketapp/ui/widgets/custom_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            Container(
              width: 327,
              height: 132,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/image-checkout.png'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage('lib/assets/image-destination-tiga.png'),
                    ),
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                      Text(
                        'Jakarta, Indonesia',
                        style: greyTextStyle.copyWith(
                            fontWeight: light, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/icon-star.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '4.7',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'Booking Details',
                style:
                    blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),
              ),
            ),

            // NOTE: Item Checkout
            CheckoutItem(
              itemName: 'Traveler',
              valueName: '2 Person',
              valueColors: kBlackColor,
            ),
            CheckoutItem(
              itemName: 'Seat',
              valueName: 'A2, A3',
              valueColors: kBlackColor,
            ),
            CheckoutItem(
              itemName: 'Insurance',
              valueName: 'YES',
              valueColors: kGreenColor,
            ),
            CheckoutItem(
              itemName: 'Refundable',
              valueName: 'NO',
              valueColors: kRedColor,
            ),
            CheckoutItem(
              itemName: 'VAT',
              valueName: '45%',
              valueColors: kBlackColor,
            ),
            CheckoutItem(
              itemName: 'Price',
              valueName: 'IDR 8.500.690',
              valueColors: kBlackColor,
            ),
            CheckoutItem(
              itemName: 'Grand Total',
              valueName: 'IDR 12.000.000',
              valueColors: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        margin: EdgeInsets.only(
            right: defaultMargin, left: defaultMargin, bottom: 20),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    color: kPrimaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 80.400.000',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold),
                    ),
                    Text(
                      'Current Balance',
                      style: greyTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget payNowButton() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: CustomButton(
            onTap: () {
              Navigator.pushNamed(context, '/success');
            },
            buttonName: 'Pay Now'),
      );
    }

    Widget tnc() {
      return Center(
        child: Container(
          margin: const EdgeInsets.only(top: 30, bottom: 30),
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              route(),
              bookingDetails(),
              paymentDetails(),
              payNowButton(),
              tnc()
            ],
          ),
        ),
      ),
    );
  }
}

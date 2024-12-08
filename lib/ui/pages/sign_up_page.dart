// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        width: double.infinity,
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget field() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full name',
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
              const SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Enter your Fullname',
                  hintStyle: greyTextStyle,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: kPrimaryColor, width: 2), // Border saat fokus
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.grey, width: 0.5), // Border saat tidak fokus
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget buttonSubmit() {
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
              Navigator.pushNamed(context, '');
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

      return Container(
        margin: const EdgeInsets.only(top: 37),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            field(),
            field(),
            field(),
            field(),
            buttonSubmit(),
          ],
        ),
      );
    }

    Widget tnc() {
      return Center(
          child: Container(
        margin: EdgeInsets.only(top: 43),
        child: GestureDetector(
          onTap: () {
            print('object');
          },
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      ));
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: ListView(
            children: [title(), inputSection(), tnc()],
          ),
        ),
      ),
    );
  }
}

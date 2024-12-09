// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/widgets/custom_button.dart';
import 'package:ticketapp/ui/widgets/custom_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return SizedBox(
        width: double.infinity,
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget field() {
        return const Column(
          children: [
            CustomField(
              title: 'Fullname',
              placeholder: 'Enter your Fullname',
            ),
            CustomField(
              title: 'Email Address',
              placeholder: 'Enter your Email Address',
              textInputType: TextInputType.emailAddress,
            ),
            CustomField(
              title: 'Password',
              placeholder: 'Enter your Password',
              obsecureText: true,
            ),
            CustomField(
              title: 'Hobby',
              placeholder: 'Enter your Hobby',
            )
          ],
        );
      }

      Widget buttonSubmit() {
        return const CustomButton();
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
            buttonSubmit(),
          ],
        ),
      );
    }

    Widget tnc() {
      return Center(
          child: Container(
        margin: const EdgeInsets.only(top: 43),
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
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          children: [title(), inputSection(), tnc()],
        ),
      ),
    );
  }
}

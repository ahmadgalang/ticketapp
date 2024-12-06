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
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: ListView(
          children: [
            Text(
              'Join us and get \nyour next journey',
              style:
                  blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 37, bottom: 43),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full name',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: normal),
                        ),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 1), // Border saat fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color:
                                      Colors.grey), // Border saat tidak fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email Address',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: normal),
                        ),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 1), // Border saat fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color:
                                      Colors.grey), // Border saat tidak fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: normal),
                        ),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 1), // Border saat fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color:
                                      Colors.grey), // Border saat tidak fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hobby',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: normal),
                        ),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 1), // Border saat fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color:
                                      Colors.grey), // Border saat tidak fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
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
                        'Submit',
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  if (kDebugMode) {
                    print('object');
                  }
                },
                child: Text(
                  'Terms and Conditions',
                  style: greyTextStyle.copyWith(fontSize: 14, fontWeight: normal, decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

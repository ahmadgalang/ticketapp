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
              margin: const EdgeInsets.only(top: 37),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Full nawme'),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 2), // Border saat fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      Colors.grey), // Border saat tidak fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Full nawme'),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 2), // Border saat fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
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
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Full nawme'),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 2), // Border saat fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
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
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Full nawme'),
                        const SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kPrimaryColor,
                                  width: 2), // Border saat fokus
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
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
                
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

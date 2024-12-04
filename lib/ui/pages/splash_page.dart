import 'dart:async';

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, '/get-started');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/logo-splashscreen.png'),
                ),
              ),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                color: kWhiteColor,
                letterSpacing: 10,
                fontSize: 32,
                fontWeight: FontWeight.w900,
                shadows: [
                  const Shadow(
                    color: Colors.black87,
                    offset: Offset(2, 2), // Posisi bayangan
                    blurRadius: 4, // Tingkat blur bayangan
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

import 'package:flutter/material.dart';
import 'package:ticketapp/ui/pages/bonus_page.dart';
import 'package:ticketapp/ui/pages/checkout_page.dart';
import 'package:ticketapp/ui/pages/choose_seat_page.dart';
import 'package:ticketapp/ui/pages/detail_page.dart';
import 'package:ticketapp/ui/pages/get_started_page.dart';
import 'package:ticketapp/ui/pages/main_page.dart';
import 'package:ticketapp/ui/pages/sign_up_page.dart';
import 'package:ticketapp/ui/pages/splash_page.dart';
import 'package:ticketapp/ui/pages/success_page.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
    '/': (context) => const SplashPage(),
      '/get-started': (context) => const GetstartedPage(),
      '/sign-up': (context) => const SignUpPage(),
      '/bonus-page': (context) => const BonusPage(),
      '/main': (context) => const MainPage(),
      '/detail-page': (context) => const DetailPage(),
      '/choose-seat' : (context) => const ChooseSeatPage(),
      '/checkout' : (context) => const CheckoutPage(),
      '/success' : (context) => const SuccessPage()
    });
  }
}

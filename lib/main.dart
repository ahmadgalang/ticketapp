import 'package:flutter/material.dart';
import 'package:ticketapp/ui/pages/getstarted_page.dart';
import 'package:ticketapp/ui/pages/splash_page.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const SplashPage(),
      '/get-started': (context) => const GetstartedPage()
    });
  }
}

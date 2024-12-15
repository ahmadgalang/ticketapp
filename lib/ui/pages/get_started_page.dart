// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';
import 'package:ticketapp/ui/widgets/custom_button.dart';

class GetstartedPage extends StatelessWidget {
  const GetstartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/image-background.png'),
                  fit: BoxFit.cover,
                  opacity: 1,
                ),
              ),
            ),
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Opacity(
                opacity: 0.2, // Nilai opacity (0.0 hingga 1.0)
                child: Container(
                  color: Colors.black, // Warna dasar
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Fly a Bird',
                    style: whiteTextStyle.copyWith(
                        fontSize: 32, fontWeight: semiBold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Explore new world with us and let \n yourself get an amazing experiences',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: light),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 80),
                    child: CustomButton(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                      width: 220, buttonName: 'Get Started',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

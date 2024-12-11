import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header() {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ahmad,\nGalang Afianto', style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),),
                Text('Where to fly today?', style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),)
              ],
            ),
          ),
          SizedBox(height: 18),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('lib/assets/image-profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header()
      ],
    );
  }
}

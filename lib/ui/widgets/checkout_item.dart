import 'package:flutter/material.dart';
import 'package:ticketapp/shared/theme.dart';

class CheckoutItem extends StatelessWidget {
  final String itemName;
  final String valueName;
  final Color valueColors;

  const CheckoutItem(
      {super.key,
      required this.itemName,
      required this.valueName, required this.valueColors,
       });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: 16,
            width: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/icon-check.png'),
              ),
            ),
          ),
          Expanded(
            child: Text(
              itemName,
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: light),
            ),
          ),
          Text(
            valueName,
            style: blackTextStyle.copyWith(
                fontSize: 14, fontWeight: light, color: valueColors),
          ),
        ],
      ),
    );
  }
}

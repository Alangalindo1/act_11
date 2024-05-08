// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expryMonth;
  final int expryYear;
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expryMonth,
    required this.expryYear,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'balance',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(
                color: Colors.grey,
                fontSize: 26,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card nmer
                Text(
                  cardNumber.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
                //expi
                Text(
                  expryMonth.toString() + '/' + expryYear.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:galindo/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = pagecontroller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My card",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "card",
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  //plus buttom
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.add)),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),
            //  crads
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    balance: 5241.61,
                    cardNumber: 123456789,
                    expryMonth: 10,
                    expryYear: 26,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 5241.61,
                    cardNumber: 123456789,
                    expryMonth: 10,
                    expryYear: 26,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 5241.61,
                    cardNumber: 123456789,
                    expryMonth: 10,
                    expryYear: 26,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 5241.61,
                    cardNumber: 123456789,
                    expryMonth: 10,
                    expryYear: 26,
                    color: Colors.deepPurple[400],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )

            Smooth_page_Indicator(
              controller: _controller,
               count: 3,
               effect:ExpadingDotsEffect(
                 activedotcolor:Colors.grey,
               ),
               ),
               SizedBox(
              height: 10,
            )
            // 3 buttom -> send + play + bills

            // column -> stats + transaction
          ],
        ),
      ),
    );
  }
}

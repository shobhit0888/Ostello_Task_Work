import 'package:flutter/material.dart';

class MarketCard1 extends StatelessWidget {
  const MarketCard1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Container(
        height: size.height * .35,
        width: size.width * .55,
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 205, 165, 252)),
          color: Color.fromARGB(255, 234, 220, 250),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset("images/m1.png"),
                      Text(
                        "Verified \nCoaching",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Container(
                  child: Column(
                    children: [
                      Image.asset("images/m2.png"),
                      Text(
                        "Lowest \nPrice",
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset("images/m3.png"),
                      Text(
                        "Free Career \nCheck",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Container(
                  child: Column(
                    children: [
                      Image.asset("images/m4.png"),
                      Text(
                        "Progress \nTracking",
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

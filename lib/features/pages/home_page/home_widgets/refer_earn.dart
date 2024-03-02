import 'package:flutter/material.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      // Use Stack for layering
      children: [
        Builder(builder: (context) {
          return Card(
            color: Colors.white,
            elevation: 5,
            child: Container(
              height: size.height * 0.12,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Refer & Earn",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Invite a friend to ostello and \nearn ₹1000 worth coins.",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
        Positioned(
            top: 10,
            right: 35,
            child: Container(
                height: 90, width: 90, child: Image.asset('images/refer.png'))),
      ],
    );
  }
}

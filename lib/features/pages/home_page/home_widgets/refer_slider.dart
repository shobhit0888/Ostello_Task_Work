// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReferSliderCard extends StatelessWidget {
  Color? color;
  ReferSliderCard({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      // Use Stack for layering
      children: [
        Builder(builder: (context) {
          return Card(
            color: color,
            elevation: 5,
            child: Container(
              height: size.height * 0.14,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                color: color,
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
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Invite a friend to ostello and \nearn ₹1000 worth coins.",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[300],
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

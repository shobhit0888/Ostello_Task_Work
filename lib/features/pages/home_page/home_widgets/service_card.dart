import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  String? imageUrl;
  String? title;
  ServiceCard({this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      // Use Stack for layering
      children: [
        Container(
          height: size.height * 0.15,
          width: size.width * 0.44,
          decoration: BoxDecoration(
            color: const Color(0xffF6EFFE),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              //
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                imageUrl!,
                height: 90.0,
                fit: BoxFit.fill,
              ),
              Text(
                title!,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -20.0,
          left: -15.0,
          child: ClipOval(
            child: Container(
              height: 70.0,
              width: 70.0,
              color: Color(0xffE8D4FF),
            ),
          ),
        ),
      ],
    );
  }
}

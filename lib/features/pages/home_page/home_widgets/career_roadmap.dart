import 'package:flutter/material.dart';

class CareerRoadmap extends StatelessWidget {
  const CareerRoadmap({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      // Use Stack for layering
      children: [
        Container(
          height: size.height * 0.15,
          width: size.width * 0.95,
          decoration: BoxDecoration(
            color: const Color(0xffF6EFFE),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              //
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Career Roadmap",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Those who plan ahead hold the \nkey to the future. Construct a.",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff6A0DAD),
                      width: 1,
                    ),
                    color: Color(0xffF6EFFE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Center(
                          child: Text(
                            "Create Now",
                            style: TextStyle(
                              color: Color(0xff6A0DAD),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xff6A0DAD),
                        )
                      ],
                    ),
                  ),
                ),

                
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -20.0,
          right: -15.0,
          child: ClipOval(
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Color(0xffE8D4FF),
            ),
          ),
        ),
        Positioned(
            top: 10,
            right: 35,
            child: Container(
                height: 90,
                width: 90,
                child: Image.asset('images/roadmap.png'))),
      ],
    );
  }
}

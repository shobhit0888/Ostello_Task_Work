import 'package:flutter/material.dart';

class AssesmentCard extends StatelessWidget {
  const AssesmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    // size of the card
    final size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.all(16),
      height: size.height * 0.55,
      width: size.width * 0.93,
      decoration: BoxDecoration(
        color: Color(0xff7D23E0),
        //  circular border
        // make all the radius 10

        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.93,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'images/assesment_back.png',
                ),
                // fit: BoxFit.cover, // Adjust fit as needed
              ),
            ),
            child: Center(
              child: Image.asset('images/assesment.png'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              "No Guessing,Just Knowing: \nYour Career Path Await",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Unlock your potential and get an instant \nreport on customised career",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[300]),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // button
          Center(
              child: GestureDetector(
            onTap: () {},
            child: Container(
              width: size.width * 0.75,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Start Assessment",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

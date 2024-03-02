// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task_project/features/widgets/coin.dart';

class BottomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Stack(
        // Use Stack for layering
        children: [
          Builder(builder: (context) {
            return Card(
              color: Color.fromARGB(255, 219, 234, 247),
              elevation: 5,
              child: Container(
                height: size.height * 0.29,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 242, 255),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromARGB(255, 161, 209, 251),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Guiding you \nthrough the \nmaze of \nchoices!",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          )),
                      
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
                height: 20,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 165, 214, 255),
                  // only left bottom and right cicles will be rounded
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                      "9k+ Students are using the platform to upgrade there career",
                      style: TextStyle(
                        fontSize: 10.0,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      )),
                ),
              ),
            ),
          ),
          Positioned(
              top: 25,
              right: -20,
              child: Container(
                  height: 250,
                  width: 250,
                  child: Image.asset('images/bottom.png'))),
        ],
      ),
    );
  }
}

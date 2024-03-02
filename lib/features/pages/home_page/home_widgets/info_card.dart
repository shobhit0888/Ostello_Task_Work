// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
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
              color: Colors.grey[100],
              elevation: 5,
              child: Container(
                height: size.height * 0.3,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Career Trends",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.65,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurpleAccent,
                            width: 1,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Center(
                                child: Text(
                                  "Explore Now",
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
            );
          }),
        ],
      ),
    );
  }
}

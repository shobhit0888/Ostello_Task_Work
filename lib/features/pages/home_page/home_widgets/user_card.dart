import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;

  const UserCard({
    Key? key,
    required this.name,
    required this.city,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      height: 120,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30), // Add this line
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi $name,",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          city,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/coin.png",
                              height: 20,
                              width: 20,
                            ),
                            Text(
                              "3500",
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("images/img.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // make the curve on the right side
    Path path = Path();
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.5, size.width,
        size.height); // Add this line
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

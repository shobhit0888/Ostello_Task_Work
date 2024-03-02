import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task_project/features/pages/home_page/home_widgets/assesment_card.dart';
import 'package:task_project/features/pages/home_page/home_widgets/bottom_card.dart';
import 'package:task_project/features/pages/home_page/home_widgets/career_roadmap.dart';
import 'package:task_project/features/pages/home_page/home_widgets/info_card.dart';
import 'package:task_project/features/pages/home_page/home_widgets/market1card.dart';
import 'package:task_project/features/pages/home_page/home_widgets/refer_earn.dart';
import 'package:task_project/features/pages/home_page/home_widgets/refer_slider.dart';
import 'package:task_project/features/pages/home_page/home_widgets/service_card.dart';
import 'package:task_project/features/pages/home_page/home_widgets/user_card.dart';

import 'package:task_project/features/widgets/coin.dart';

import '../../../data/models/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Consumer<UserModel>(
                builder: (context, userModel, child) {
                  return UserCard(
                    name: userModel.name,
                    city: userModel.city,
                    imageUrl: userModel.imageUrl,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(child: AssesmentCard()),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Top Services",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: size.width * .95,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ServiceCard(
                      title: "Career Trends",
                      imageUrl: 'images/service1.png',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ServiceCard(
                      title: "Scholarships",
                      imageUrl: 'images/service2.png',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(child: CareerRoadmap()),
            SizedBox(height: 20),
            Center(child: ReferEarn()),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("Marketplace",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            SizedBox(height: 20),
            CarouselSlider(
                items: [
                  MarketCard1(),
                  // Image.asset("images/card.png")
                  Container(
                    height: 135,
                    width: 135,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 205, 165, 252)),
                      color: Color.fromARGB(255, 234, 220, 250),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.asset("images/card.png"),
                  )
                ],
                options: CarouselOptions(
                    aspectRatio: 9 / 16,
                    autoPlay: true,
                    height: 200,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.90)),
            SizedBox(height: 20),
            // Padding(
            //   padding: const EdgeInsets.only(left: 18.0),
            //   child: Text("Marketplace",
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            // ),
            SizedBox(height: 20),
            CarouselSlider(
                items: [
                  ReferSliderCard(
                    color: Color(0xff16763E),
                  ),
                  ReferSliderCard(
                    color: Color(0xffE67A1F),
                  ),
                ],
                options: CarouselOptions(
                    aspectRatio: 9 / 16,
                    autoPlay: true,
                    height: 135,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.80)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("Quick Info",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            SizedBox(height: 20),
            CarouselSlider(
                items: [InfoCard(), InfoCard()],
                options: CarouselOptions(
                    aspectRatio: 9 / 16,
                    autoPlay: true,
                    height: 270,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.80)),
            SizedBox(height: 20),
            BottomCard(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

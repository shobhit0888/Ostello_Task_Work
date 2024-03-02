import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final NavigationModel navigationModel =
        Provider.of<NavigationModel>(context);

    return Scaffold(
      body: navigationModel.currentScreen,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF7D23E0).withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          splashColor: const Color(0xFF7D23E0),
          elevation: 0,
          onPressed: () {},
          backgroundColor: Colors.white, // Circular button color
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'images/bot_face.png',
                height: 200,
                width: 200,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 15,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: size.width * .1, height: 60),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => navigationModel.onTabTapped(1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                            size: navigationModel.currentIndex == 0 ? 32 : 24,
                            color: navigationModel.currentIndex == 0
                                ? const Color(0xFF7D23E0)
                                : Colors.grey),
                        Text('Home',
                            style: TextStyle(
                                color: navigationModel.currentIndex == 0
                                    ? const Color(0xFF7D23E0)
                                    : Colors.grey)),
                      ],
                    ),
                  ),
                  SizedBox(width: size.width * .31, height: 60),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => navigationModel.onTabTapped(1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.store,
                            size: navigationModel.currentIndex == 1 ? 32 : 24,
                            color: navigationModel.currentIndex == 1
                                ? const Color(0xFF7D23E0)
                                : Colors.grey),
                        Text('Marketplace',
                            style: TextStyle(
                                color: navigationModel.currentIndex == 1
                                    ? const Color(0xFF7D23E0)
                                    : Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

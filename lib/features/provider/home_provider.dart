import 'package:flutter/material.dart';
import 'package:task_project/features/pages/home_page.dart';

class NavigationModel extends ChangeNotifier {
  int _currentIndex = 0;
  Widget _currentScreen = HomePage(); // Default to HomeScreen

  int get currentIndex => _currentIndex;
  Widget get currentScreen => _currentScreen;

  void onTabTapped(int index) {
    _currentIndex = index;
    switch (_currentIndex) {
      case 0:
        _currentScreen = HomePage();
        break;
      case 1:
        _currentScreen = MarketplaceScreen();
        break;
      default:
        _currentScreen = HomePage();
        break;
    }
    notifyListeners();
  }
}

class MarketplaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green);
  }
}

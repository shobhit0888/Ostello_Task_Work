import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
  String _name = 'John Doe';
  String _city = 'San Francisco';
  String _imageUrl = 'https://example.com/profile-image.jpg';

  String get name => _name;
  String get city => _city;
  String get imageUrl => _imageUrl;

  void updateUser(String newName, String newCity, String newImageUrl) {
    _name = newName;
    _city = newCity;
    _imageUrl = newImageUrl;
    notifyListeners();
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_project/features/pages/assesment_card.dart';
import 'package:task_project/features/pages/user_card.dart';

import '../../data/models/user.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(height: 20),
            AssesmentCard(),
          ],
        ),
      ),
    );
  }
}

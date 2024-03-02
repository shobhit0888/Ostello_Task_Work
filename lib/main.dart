import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_project/data/models/user.dart';

import 'package:task_project/features/pages/intial_page.dart';

import 'features/provider/home_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationModel()),
        ChangeNotifierProvider(
      create: (context) => UserModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}

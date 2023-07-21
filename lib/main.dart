import 'package:al_a5bar/layout/home_layout.dart';
import 'package:al_a5bar/screens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName:(context)=>HomeLayout(),
      },
      debugShowCheckedModeBanner: false,
     );
  }
}


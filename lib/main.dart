import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isibi_ucic/pages/bottom_nav_bar.dart';
import 'package:isibi_ucic/widgets/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          } else {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: BottomNavBar(),
              theme: ThemeData(scaffoldBackgroundColor: Colors.white),
            );
          }
        });
  }
}

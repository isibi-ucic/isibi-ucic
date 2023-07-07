import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:isibi_ucic/controller/bottom_nav_bar_controller.dart';
import 'package:isibi_ucic/pages/home.dart';
import 'package:isibi_ucic/pages/news.dart';
import 'package:isibi_ucic/pages/translator.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBarController botNavBarC = Get.put(BottomNavBarController());

  final screens = [HomePage(), TranslatorPage(), News()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => IndexedStack(
              children: screens,
              index: botNavBarC.selectedIndex.value,
            )),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.black,
          style: TabStyle.fixedCircle,
          items: [
            TabItem(icon: Icons.home),
            TabItem(icon: Icons.handyman),
            TabItem(icon: Icons.newspaper),
          ],
          initialActiveIndex: 1,
          onTap: (index) {
            botNavBarC.changeIndex(index);
          },
        ));
  }
}

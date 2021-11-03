import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_tut/app/modules/cart/views/cart_view.dart';
import 'package:getx_tut/app/modules/home/views/home_view.dart';
import 'package:getx_tut/app/modules/profile/views/profile_view.dart';
import 'package:getx_tut/app/modules/wishlist/views/wishlist_view.dart';

import '../controllers/view_controller.dart';

class ViewView extends GetView<ViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: SizedBox.expand(
        child: PageView(
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          children: [HomeView(), WishlistView(), CartView(), ProfileView()],
          controller: controller.pageController,
        ),
      ),
      bottomNavigationBar: Obx(() => FancyBottomNavigation(
            tabs: [
              TabData(iconData: Icons.home, title: "Home"),
              TabData(iconData: Icons.favorite, title: "Wishlist"),
              TabData(iconData: Icons.shopping_cart, title: "Cart"),
              TabData(iconData: Icons.account_box, title: "Profile"),
            ],
            onTabChangedListener: (position) {
              controller.currentIndex.value = position;
              controller.pageController.jumpToPage(position);
            },
            initialSelection: controller.currentIndex.value,
            key: controller.bottomNavigationKey,
          )),
    );
  }
}

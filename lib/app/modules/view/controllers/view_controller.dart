import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ViewController extends GetxController {
  //TODO: Implement HomeController
  late PageController pageController;
  var currentIndex = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
  }
}

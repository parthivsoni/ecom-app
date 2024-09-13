import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/features/shop/screens/home/home.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class OnboardingController extends GetxController{

  static OnboardingController get instance => Get.find();

  // Variables
  final pageController=PageController();
  Rx<int> currentPageIndex=0.obs;
  
  // update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // jump to the specific dot selected page
  void dotNavigationClick(index)
  {
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }

  // update current index & jumo to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(LoginScreen());
    }else{
      int page=currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current index & jump to the last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
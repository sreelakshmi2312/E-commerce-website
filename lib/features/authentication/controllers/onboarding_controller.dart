import 'package:ecommerceapp/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
   static OnBoardingController get instance => Get.find();
   Rx<int> selectedpageindex=0.obs;
   PageController pagecontroller=PageController();
   
   //update selectedpageindex 

   void updateSelectedPage(int index){
     selectedpageindex.value=index;
   }
   //Move to next page on scrolling 

   void moveToNextPage(){
    if(selectedpageindex.value==2){
      Get.to(const LoginScreen());
    }
    else{
      final index=selectedpageindex.value+1;
      pagecontroller.jumpToPage(index);
    }
   }

   // jump to a page on selection of dot

   void moveToSelectedPage(int index){
    selectedpageindex.value=index;
    pagecontroller.jumpToPage(selectedpageindex.value);
   }
     
   //skip to last page 

   void skipToFinalPage(){
    selectedpageindex.value=2;
    pagecontroller.jumpToPage(2);
   }
     
   }
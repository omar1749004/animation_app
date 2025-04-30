import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimLogiccontroller extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController animationController ;
  late Animation animation ;

  @override
  void onInit() {
    animationController = AnimationController(vsync: this ,duration: Duration(seconds: 2)
    
    );
    // double tween
    //animation = Tween<double>(begin: 0,end: 12).animate(animationController)

    //color tween
    // animation = ColorTween(begin: Colors.red,end: Colors.blue).animate(animationController)
    // ..addListener((){
    //   update();
    // })..addStatusListener((state){
    //   print("Animation Status changed $state");
    // });

    //curves 
    animation = ColorTween(begin: Colors.red,end: Colors.blue)
    .animate(CurvedAnimation(parent: animationController,
     curve: Curves.bounceInOut)) 
     ..addListener((){
      update();
    })..addStatusListener((state){
      print("Animation Status changed $state");
    });

    super.onInit();
  }
  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
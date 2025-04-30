import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ExplicitController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<RelativeRect> posAnimatation1;
  late Animation<RelativeRect> posAnimatation2;

  late Animation<double> siezAnimatation;

  late Animation<double> rotateAnimatation;

  late Animation<double> fadeTransAnimation;

  late Animation<RelativeRect> positionDirctionAnimation;

  //index
  late Animation<double> opacityfadeTransAnimation;
  late Animation<double> scalAnimation;
  


  late AnimationController animationControlleRepete;
  int index = 0 ;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    animationControlleRepete = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);

    posAnimatation1 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(150, 150, 0, 0),
    ).animate(animationController);
    posAnimatation2 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(80, 80, 0, 0),
    ).animate(animationController);

    siezAnimatation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: animationController, curve: Curves.bounceInOut),
    );

    rotateAnimatation = Tween<double>(
      begin: 0,
      end: 7,
    ).animate(animationController);
    fadeTransAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);

    positionDirctionAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(100, 100, 0, 0),
    ).animate(animationController);

   //index 
   opacityfadeTransAnimation = Tween<double>(begin: 0 ,end: 1).animate(animationController) ;
   scalAnimation = Tween<double>(begin: 0.5 ,end: 1).animate(animationController) ;
    animationController.forward();


    super.onInit();
  }

   void changIndex(){
    animationController.reset();
    animationController.forward();
    print(index) ;
    if(index < 1){
      index ++ ;
    }else{
      index = 0 ;
    }

   }


  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}

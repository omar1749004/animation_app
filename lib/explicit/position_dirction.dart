import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PositionDirction extends StatelessWidget {
  const PositionDirction({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplicitController());
    return GetBuilder<ExplicitController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("Position Dirction Transition ")),
            body: Stack(children: [
                 AnimatedBuilder(
                animation: controller.animationControlleRepete,
                builder:(context, child) {
                  return 
                    PositionedDirectional(
                   start: controller.positionDirctionAnimation.value.left,
                   end: controller.positionDirctionAnimation.value.right,
                   top: controller.positionDirctionAnimation.value.top,
                   bottom: controller.positionDirctionAnimation.value.bottom, 
                   child: Container(
                    color: Colors.blue,
                
                   ),
                 ) ;
                  
                },
              ),

               
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (controller.animationController.value == 1) {
                  controller.animationController.reverse();
                } else {
                  controller.animationController.forward();
                }

                controller.update();
              },
              child: Icon(Icons.play_arrow),
            ),
          ),
    );
  }
}

import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexStack extends StatelessWidget {
  const IndexStack({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    Get.put(ExplicitController());
    return GetBuilder<ExplicitController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("Index Stack Transition ")),
            body: IndexedStack(
              index: controller.index,
              children: [
               ScaleTransition(
                scale: controller.scalAnimation,
                 child: FadeTransition(
                  opacity: controller.opacityfadeTransAnimation,
                   child: SizedBox(
                      child: Image.asset("assets/images/Rectangle3.png"),
                    ),
                 ),
               ),
                ScaleTransition(
                scale: controller.scalAnimation,
                 child: SizedBox(
                    child: Image.asset("assets/images/Rectangle2.png"),
                  ),
               ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // if (controller.animationController.value == 1) {
                //   controller.animationController.reverse();
                // } else {
                //   controller.animationController.forward();
                // }
               
                controller.changIndex() ;

                controller.update();
              },
              child: Icon(Icons.play_arrow),
            ),
          ),
    );
  }
}

import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FadeTrans extends StatelessWidget {
  const FadeTrans({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplicitController());
    return GetBuilder<ExplicitController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("Fade Transition ")),
            body: Center(
              child: FadeTransition(
                opacity: controller.fadeTransAnimation,
                child: SizedBox(
                    width: 100,
                    height: 200,
                    child: Image.asset("assets/images/Rectangle3.png"),
                  ),
              )
            ),
             

              floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (controller.animationController.value == 1 ) {
                  controller.animationController.reverse() ;
                }else{
                   controller.animationController.forward() ;
                }
                
               
                controller.update();
              },
              child: Icon(Icons.play_arrow),
            ),
           
          ),
    );
  }
}

import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RotateTrans extends StatelessWidget {
  const RotateTrans({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplicitController());
    return GetBuilder<ExplicitController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated Rotate Transition ")),
            body: Center(
              child: RotationTransition(
                turns: controller.rotateAnimatation,
                child: SizedBox(
                  width: 100,
                  height: 200,
                  child: Image.asset("assets/images/Rectangle3.png"),
                ),
              ),
            ),

            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.animationController.reset() ;
                controller.animationController.forward() ;
                controller.update();
              },
              child: Icon(Icons.play_arrow),
            ),
          ),
    );
  }
}

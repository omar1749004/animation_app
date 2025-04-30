import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeTrans extends StatelessWidget {
  const SizeTrans({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplicitController());
    return Scaffold(
      appBar: AppBar(title: Text("animated Size Transition ")),
      body: GetBuilder<ExplicitController>(
        builder:
            (controller) => 
            Center(child: 
            InkWell(
              onTap: () {
                controller.animationController.reset();
                controller.animationController.forward();
              },
              child: Container(
                width: 300,
                height: 300,
                color: Colors.blue,
                child:  Align(
                  child: SizeTransition(
                      sizeFactor: controller.siezAnimatation,
                      child: SizedBox(
                    width: 100,
                    height: 200,
                    child:
                       Image.asset("assets/images/Rectangle3.png"
                      ),
                    ),
                  ),
                ),
              ),
            )
            ,)

      ));
  }
}
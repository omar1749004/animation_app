import 'dart:math';

import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatBuilder extends StatelessWidget {
  const AnimatBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplicitController());
    return GetBuilder<ExplicitController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated builder Transition ")),
            body: Center(
              child: AnimatedBuilder(
                animation: controller.animationControlleRepete,
                builder:(context, child) {
                  return Transform.rotate(angle: controller.animationControlleRepete.value*2*pi, child: SizedBox(
                  width: 100,
                  height: 200,
                  child: Image.asset("assets/images/Rectangle3.png"),
                ) ,) ;
                  
                  
                },
              ),
            ),

           
          ),
    );
  }
}

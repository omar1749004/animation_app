import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PositionTrainstion extends StatelessWidget {
  const PositionTrainstion({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplicitController());
    return Scaffold(
      appBar: AppBar(title: Text("animated Position Transition ")),
      body: GetBuilder<ExplicitController>(
        builder:
            (controller) => Stack(
              children: [
                PositionedTransition(
                  rect: controller.posAnimatation2,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                    child: Image.asset("assets/images/Rectangle3.png"),
                  ),
                ),
                PositionedTransition(
                  rect: controller.posAnimatation1,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                    child: Image.asset("assets/images/Rectangle2.png"),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          controller.animationController.reverse() ;
                        },
                        child: Icon(Icons.close),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.animationController.forward() ;
                        },
                        child: Icon(Icons.start),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      ),
    );
  }
}

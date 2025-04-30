import 'package:animation/controller/anim_logic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimControllerPage extends StatelessWidget {
  const AnimControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AnimLogiccontroller());
    return GetBuilder<AnimLogiccontroller>(
        builder:(controller) => Scaffold(
      body: 
             Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "animation controll value . ${controller.animationController.value.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child:
                    //  Text(
                    //   "animation  value . ${controller.animation.value.toStringAsFixed(2)}",
                    //   style: TextStyle(fontSize: 20),
                    // ),
                     Text(
                      "animation  value . ${controller.animation.value}",
                      style: TextStyle(fontSize: 20 ,color:controller.animation.value ),
                    ),
                  ),
                  Container(
                    color: controller.animation.value ,
                    width: 100,
                    height: 100,
                  )
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  controller.animationController.forward();
                }, child: Icon(Icons.play_arrow)),
                  ElevatedButton(onPressed: (){
                  controller.animationController.reverse();
                }, child: Icon(Icons.arrow_back)),
              ],
            ),
      ),
    );
  }
}

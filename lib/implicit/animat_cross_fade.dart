import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';

class AnimatCrossFade extends StatelessWidget {
  const AnimatCrossFade({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ImController());
    return  Scaffold(
      appBar: AppBar(title: Text("animated Cross fade ")),
      body: GetBuilder<ImController>(
        builder: (controller) => Center(
          child: InkWell(
            onTap: (){
              controller.changeimage() ;
            },
            child: AnimatedCrossFade(
              duration: Duration(milliseconds: 1000),
              firstChild:  Image.asset(controller.image1,width: 200,),
              secondChild:  Image.asset(controller.image2,width: 200,),
              crossFadeState: controller.isShowfirst ? CrossFadeState.values.first :CrossFadeState.showSecond ,
              
             )),
        ),
      ),
    );
  }
}
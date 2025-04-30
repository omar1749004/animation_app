import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class AnimatPhysicalModel extends StatelessWidget {
  const AnimatPhysicalModel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated Physical Model")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 GestureDetector(
                  onTap: () {
                    controller.toggleElevation() ;
                  },
                   child: AnimatedPhysicalModel(
                    shape: BoxShape.rectangle,
                    elevation: controller.isElveted,
                    shadowColor: Colors.blueGrey,
                    duration: Duration(milliseconds: 400) ,
                    curve: Curves.bounceInOut,
                    color: Colors.transparent,
                     child: Container(
                          width: 200,
                          height: 200,
                          color: Colors.transparent,
                          child: Image.asset("assets/images/Rectangle3.png"),
                        ),
                   ),
                 ),
                ],
              ),
            ),
           
          ),
    );
  }
}
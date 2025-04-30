import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class AnimatPositined extends StatelessWidget {
  const AnimatPositined({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated Position ")),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.transparent,
                      child: Text("Chease", style:  TextStyle(fontSize: 30),),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    right: controller.iscach ? 260:0 ,
                    top: 0,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/Rectangle3.png"),
                    ),
                  ),
                   AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    right: controller.iscach ? 260:60,
                    top: controller.iscach ? 0:300,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/Rectangle2.png"),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    left: controller.iscach ? 0 :10,
                    bottom: controller.iscach ? 593 :0,
                   
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/Rectangle3.png"),
                    ),
                  ),
                ],
              ),
            ),
            
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.togglechach() ;
                controller.update();
              },
              child: Icon(Icons.place),
            ),
          ),
    );
  }
}
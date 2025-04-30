import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class AnimatPositinedDirection extends StatelessWidget {
  const AnimatPositinedDirection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated Position Direction")),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  //Spacer(),
                  AnimatedPositionedDirectional(
                    start: controller.left,
                    top: controller.top,
                    duration: Duration(milliseconds: 600),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/Rectangle3.png"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            controller.movetop();
                          },
                          child: Icon(Icons.arrow_upward),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.movebottom();
                          },
                          child: Icon(Icons.arrow_downward),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.moveLeft();
                          },
                          child: Icon(Icons.arrow_back),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.moveRight();
                          },
                          child: Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

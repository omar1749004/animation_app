import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AnimateAlign extends StatelessWidget {
  const AnimateAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated align ")),
            body: Stack(
              children: [
                AnimatedAlign(
                  alignment: controller.getNextAlignment(
                    controller.jerryAlignmen,
                  ),
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.transparent,
                    child: Image.asset("assets/images/Rectangle2.png"),
                  ),
                ),
                AnimatedAlign(
                  alignment: controller.getNextAlignment(
                    controller.jerryAlignmen + 1,
                  ),
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.transparent,
                    child: Image.asset("assets/images/Rectangle3.png"),
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.jerryAlignmen++;
                controller.update();
              },
              child: Icon(Icons.animation),
            ),
          ),
    );
  }
}

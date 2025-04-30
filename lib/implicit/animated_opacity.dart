import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AnimateOpacity extends StatelessWidget {
  const AnimateOpacity({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated Opacity")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: controller.opacity,
                    child: Text(
                      "Tom And Jerry",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(height: 20),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1500),
                    opacity: controller.opacity,
                    curve: Curves.easeInCirc,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/Rectangle3.png"),
                    ),
                  ),
                  SizedBox(height: 20),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 2000),
                    opacity: controller.opacity,
                    curve: Curves.easeInCirc,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/Rectangle2.png"),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.opacity = controller.opacity == 0 ? 1 : 0;
                controller.update();
              },
              child: Icon(Icons.remove_red_eye_outlined),
            ),
          ),
    );
  }
}

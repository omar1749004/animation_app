import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AnimateStyle extends StatelessWidget {
  const AnimateStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated Style")),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedDefaultTextStyle(
                    style: TextStyle(
                      fontSize: controller.fontSize,
                      color: controller.textColor,
                    ),
                    duration: Duration(milliseconds: 400),
                    curve: Curves.bounceIn,
                    child: Text("Animated Text!"),
                  ),
                  SizedBox(height: 20,) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: () {
                        controller.addStyleAnimtiontext();
                      }, icon: Icon(Icons.add)),
                      IconButton(
                        onPressed: () {
                          controller.minasStyleAnimtiontext();
                        },
                        icon: Icon(Icons.minimize_sharp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

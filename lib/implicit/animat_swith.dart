import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class AnimaSwith extends StatelessWidget {
  const AnimaSwith({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated Switch")),
            body: Center(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 1000),
                child:
                    controller.isShowfirst
                        ? ElevatedButton(
                          onPressed: () {
                            controller.changeimage();
                          },
                          child: Text("Login Now"),
                        )
                        : CircularProgressIndicator(),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.import_contacts),
              onPressed: () {
                controller.changeimage();
              },
            ),
          ),
    );
  }
}

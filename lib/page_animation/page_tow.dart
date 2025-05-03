import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTow extends StatelessWidget {
  const PageTow({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplicitController());
    return GetBuilder<ExplicitController>(
      builder:
          (controller) => Scaffold(
            backgroundColor: Colors.amber,
            appBar: AppBar(title: Text("Page Fade")),
            body: Center(
              child:   ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Text("Page Fade example"),
                  ),
            ),
             

              floatingActionButton: FloatingActionButton(
              onPressed: () {
               
                
               
                controller.update();
              },
              child: Icon(Icons.play_arrow),
            ),
           
          ),
    );
  }
}

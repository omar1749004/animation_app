import 'package:animation/controller/explicit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TweenAnimatBuilder extends StatelessWidget {
  const TweenAnimatBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ExplicitController());
    return GetBuilder<ExplicitController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("Tween animation builder")),
            body: Center(
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0,end: controller.opacityLevel),
               duration: Duration(seconds: 2),
                builder: (BuildContext context, double value,Widget? child){
                  return Opacity(opacity: value, child: child,);
                },
                child: SizedBox(
                    width: 100,
                    height: 200,
                    child: Image.asset("assets/images/Rectangle3.png"),
                  ),)
            ),
             

              floatingActionButton: FloatingActionButton(
              onPressed: () {
                
                controller.opacityLevel = controller.opacityLevel == 0? 1:0 ;
               controller.update() ;
              },
              child: Icon(Icons.play_arrow),
            ),
           
          ),
    );
  }
}

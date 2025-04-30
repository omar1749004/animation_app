import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class AnimatPadding extends StatelessWidget {
  const AnimatPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated Padding ")),
            body: GridView.count(crossAxisCount: 2 , 
            children: List.generate(controller.chart.length, (index) => 
             AnimatedPadding(
               padding: EdgeInsets.all(controller.padding),
               duration: Duration(milliseconds: 400),
               curve: Curves.decelerate,
               child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/${controller.chart[index]}.png"),
                    ),
             )
            ),
            ),
            
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.padding = controller.padding == 10 ? 30 :10 ;
                controller.update();
              },
              child: Icon(Icons.arrow_upward),
            ),
          ),
    );
  }
}
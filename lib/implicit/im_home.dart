import 'package:animation/controller/im_controller.dart';
import 'package:animation/explicit/animat_builder.dart';
import 'package:animation/explicit/credit_card.dart';
import 'package:animation/explicit/fade_trans.dart';
import 'package:animation/explicit/index_stack.dart';
import 'package:animation/explicit/position_dirction.dart';
import 'package:animation/explicit/position_trainstion.dart';
import 'package:animation/explicit/rotate_trans.dart';
import 'package:animation/explicit/size_trans.dart';
import 'package:animation/implicit/animat_list.dart';
import 'package:animation/implicit/animat_swith.dart';
import 'package:animation/implicit/animat_cross_fade.dart';
import 'package:animation/implicit/animat_padding.dart';
import 'package:animation/implicit/animat_physical_model.dart';
import 'package:animation/implicit/animat_position_direction.dart';
import 'package:animation/implicit/animat_positioned.dart';
import 'package:animation/implicit/animated_align.dart';
import 'package:animation/implicit/animated_opacity.dart';
import 'package:animation/implicit/animated_style.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class ImHome extends StatelessWidget {
  const ImHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ImController());

    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("Flutter anmtion course")),
            body: Center(
              child: ListView(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimateAlign()),
                      );
                    },
                    child: Text("lecture #1"),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimateStyle()),
                      );
                    },
                    child: Text("lecture #2"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimateOpacity()),
                      );
                    },
                    child: Text("lecture #3"),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimatPadding()),
                      );
                    },
                    child: Text("lecture #4"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimatPhysicalModel()),
                      );
                    },
                    child: Text("lecture #5"),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimatPositined()),
                      );
                    },
                    child: Text("lecture #6"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimatPositinedDirection()),
                      );
                    },
                    child: Text("lecture #7"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimatCrossFade()),
                      );
                    },
                    child: Text("lecture #8"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimaSwith()),
                      );
                    },
                    child: Text("lecture #9"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimatList()),
                      );
                    },
                    child: Text("lecture #10"),
                  ),
                  SizedBox(height: 10,),

                  Center(child: Text("Explicit"),),    

                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PositionTrainstion()),
                      );
                    },
                    child: Text("lecture #1"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SizeTrans()),
                      );
                    },
                    child: Text("lecture #2"),
                  ),
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RotateTrans()),
                      );
                    },
                    child: Text("lecture #3"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimatBuilder()),
                      );
                    },
                    child: Text("lecture #4"),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FadeTrans()),
                      );
                    },
                    child: Text("lecture #5"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PositionDirction()),
                      );
                    },
                    child: Text("lecture #6"),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IndexStack()),
                      );
                    },
                    child: Text("lecture #9"),
                  ),
                   ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreditCard()),
                      );
                    },
                    child: Text("Creadit Card example"),
                  ),
                ],
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //    Text("You have Pushed the button this many times:"),
              //    Text("${controller.counter}" ,style: TextStyle(fontSize: 20),)
              //   ],
              // ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: controller.incrementCounter,
              tooltip: "Increment",
              child: Icon(Icons.add),
            ),
          ),
    );
  }
}

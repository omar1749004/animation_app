import 'package:animation/controller/im_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';

class AnimatList extends StatelessWidget {
  const AnimatList({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ImController());
    return GetBuilder<ImController>(
      builder:
          (controller) => Scaffold(
            appBar: AppBar(title: Text("animated List ")),
            body: AnimatedList(
              key: controller.listKey,
              itemBuilder:
                  (context, index, animation) => SizeTransition( // for animation 
                    sizeFactor: animation,
                    child: ListTile(
                      title: Text(controller.list[index]),
                      trailing: IconButton(
                        onPressed: () {
                          controller.reomveList(index ,context);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ),
            ),
            floatingActionButton: FloatingActionButton(onPressed: (){
           controller.addToList() ;
            },
            child: Icon(Icons.add),
            ),
          ),
    );
  }
}

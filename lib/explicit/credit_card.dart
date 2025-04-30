import 'package:animation/controller/creadit_card_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CreaditCardController());
    return Scaffold(
      body: GetBuilder<CreaditCardController>(
        builder:
            (controller) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: double.infinity,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                          Spacer(),
                          Text(
                            "Wallet",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              controller.sparetstate =
                                  controller.sparetstate == 0 ? 1 : 0;
                              controller.spereted();
                            },
                            icon: Icon(CupertinoIcons.arrow_up_arrow_down),
                          ),
                        ],
                      ),
                    ),
                    ...List.generate(controller.cardImages.length, (index) {
                      // Spread operator
                      return AnimatedPositioned(
                        duration: Duration(
                          milliseconds: controller.useAnimation ? 700 : 0,
                        ),
                        top: controller.getOffset(index),
                        right: 0,
                        left: 0,
                        child:
                            index == 2
                                ? GestureDetector(
                                  onTap: () {
                                    controller.showList1Animated();
                                    if (controller.sparetstate != 1) {
                                      controller.sparetstate =
                                          controller.sparetstate == 0 ? 2 : 0;
                                      controller.expanded();
                                    }
                                  },
                                  onVerticalDragStart: (details) {
                                    controller.startyPosition =
                                        details.localPosition.dy;
                                  },
                                  onVerticalDragUpdate: (details) {
                                    controller.onVerticalDragUpdate(details);
                                  },
                                  onVerticalDragEnd: (details) {
                                    controller.onVerticalDragEnd(details);
                                  },
                                  child: SizedBox(
                                    child: Image.asset(
                                      height: 230,
                                      fit: BoxFit.fitHeight,
                                      controller.cardImages[index],
                                    ),
                                  ),
                                )
                                : SizedBox(
                                  child: Image.asset(
                                    height: 230,
                                    fit: BoxFit.fitHeight,
                                    controller.cardImages[index],
                                  ),
                                ),
                      );
                    }),
                    if (controller.sparetstate == 2)
                      Positioned(
                        top: 280,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          height: 500, // or any fixed height you want
                          child: AnimatedList(
                            key: controller.listKey,
                            initialItemCount: controller.shownItems.length,
                            itemBuilder: (context, index, animation) {
                              final brand = controller.shownItems[index];
                              return SizeTransition(
                                sizeFactor: animation,
                                child: ListTile(
                                  leading: SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset(
                                      brand.imageUrl,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  title: Text(brand.name),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}

import 'package:animation/model/brand_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CreaditCardController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<RelativeRect> credid1;
  late Animation<RelativeRect> credid2;
  late Animation<RelativeRect> credid3;

  double firstIndexOffset = 0;
  double secondIndexOffset = 70;
  double lastIndexoffset = 140;

  double startyPosition = 0.0;
  double endyPosition = 0.0;

  bool useAnimation = true;
  List<double> offsetList = [80, 130, 180];
  List<String> cardImages = [
    "assets/images/credit_card_1.png",
    "assets/images/credit_card_2.png",
    "assets/images/credit_card_3.png",
  ];
  int sparetstate = 0;

  List<BrandModel> shownItems = [];
  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  void onInit() {
    super.onInit();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    credid1 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(0, 150, 0, 0),
    ).animate(animationController);

    credid2 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 70, 0, 0),
      end: RelativeRect.fromLTRB(0, 230, 0, 0),
    ).animate(animationController);

    credid3 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 140, 0, 0),
      end: RelativeRect.fromLTRB(0, 300, 0, 0),
    ).animate(animationController);
  }

  void onVerticalDragUpdate(DragUpdateDetails details) {
    if (sparetstate != 1) {
      lastIndexoffset += details.delta.dy;
      offsetList[2] = lastIndexoffset;
      update();
    }
  }

  void onVerticalDragEnd(DragEndDetails details) {
    if (sparetstate == 0) {
      endyPosition = details.localPosition.dy;
      if (startyPosition < endyPosition - 50) {
        //change down
        changeImageOrder();

        changeOffset();

        // topLastIndex = 0 ;
      } else if (startyPosition > endyPosition + 50) {
        //chnage up
        //  topLastIndex = 0 ;
        changeImageOrder();
        changeOffset();
      } else {
        offsetList[2] = 180;
      }

      lastIndexoffset = 180;

      update();
    } else if (sparetstate == 2) {
      endyPosition = details.localPosition.dy;
      if (startyPosition < endyPosition - 50) {
        changeImageOrder();
        changeOffsetNotSperet();
      } else if (startyPosition > endyPosition + 50) {
        changeImageOrder();
        changeOffsetNotSperet();
      } else {
        offsetList[2] = 30;
      }

      lastIndexoffset = 30;

      update();
    }
  }

  void changeImageOrder() {
    String last = cardImages.removeLast();
    cardImages.insert(0, last);
  }

  void changeOffset() {
    useAnimation = false;
    double last = offsetList.removeLast();
    offsetList.insert(0, last);

    Future.delayed(Duration(milliseconds: 10), () {
      for (int i = 0; i < offsetList.length; i++) {
        offsetList[i] = 80.0 + (i * 50);
      }
      useAnimation = true;

      update(); // <-- now it will animate from lastOffset→new offsets
    });
  }

  void changeOffsetNotSperet() {
    useAnimation = false;
    double last = offsetList.removeLast();
    offsetList.insert(0, last);

    Future.delayed(Duration(milliseconds: 10), () {
      for (int i = 0; i < offsetList.length; i++) {
        offsetList[i] = 30;
      }
      useAnimation = true;
      showList1Animated();
      update();
    });
  }

  double getOffset(int index) {
    return offsetList[index];
  }

  void spereted() {
    if (sparetstate == 1) {
      for (int i = 0; i < offsetList.length; i++) {
        offsetList[i] = 80.0 + (i * 235);
      }
    } else {
      for (int i = 0; i < offsetList.length; i++) {
        offsetList[i] = 80.0 + (i * 50);
      }
    }
    update();
  }

  void expanded() {
    if (sparetstate == 2) {
      for (int i = 0; i < offsetList.length; i++) {
        offsetList[i] = 30;
      }
    } else if (sparetstate == 0) {
      for (int i = 0; i < offsetList.length; i++) {
        offsetList[i] = 80.0 + (i * 50);
      }
    }
    update();
  }

  void showList1Animated() async {
    shownItems.clear();
    listKey = GlobalKey<AnimatedListState>();
    if (cardImages[2] == "assets/images/credit_card_3.png") {

      for (int i = 0; i < brandList3.length; i++) {
        await Future.delayed(Duration(milliseconds: 300));
        shownItems.insert(i, brandList3[i]);
        listKey.currentState?.insertItem(i);
        update();
      }
    } else if (cardImages[2] == "assets/images/credit_card_2.png") {
      for (int i = 0; i < brandList2.length; i++) {
        await Future.delayed(Duration(milliseconds: 300));
        shownItems.insert(i, brandList2[i]);
        listKey.currentState?.insertItem(i);
        update();
      }
    } else {
      for (int i = 0; i < brandList1.length; i++) {
        await Future.delayed(Duration(milliseconds: 300));
        shownItems.insert(i, brandList1[i]);
        listKey.currentState?.insertItem(i);
        update();
      }
    }
  }
}

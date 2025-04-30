import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  int counter = 0;
  void incrementCounter() {
    counter++;
    update();
  }

  int jerryAlignmen = 0;

  double fontSize = 30;
  Color textColor = Colors.blue;

  double opacity = 1;

  List<String> chart = ["Rectangle2", "Rectangle2", "Rectangle3", "Rectangle3"];
  double padding = 10.0;

  double isElveted = 0.0;

  bool iscach = false;

  double left = 0;
  double top = 0;

  String  image1 = "assets/images/Rectangle2.png" ;
String  image2 = "assets/images/Rectangle3.png" ;
 bool isShowfirst = true ;

  final GlobalKey<AnimatedListState>  listKey = GlobalKey<AnimatedListState>();
  List<String> list = [] ;

  Alignment getNextAlignment(int _jerryAlignmen) {
    switch (_jerryAlignmen) {
      case 1:
        return Alignment.topRight;
      case 2:
        return Alignment.topCenter;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        jerryAlignmen = 0;
        return Alignment.topLeft;
    }
  }

  addStyleAnimtiontext() {
    fontSize = 50;
    textColor = Colors.orange;
    update();
  }

  minasStyleAnimtiontext() {
    fontSize = 30;
    textColor = Colors.blue;
    update();
  }

  void toggleElevation() {
    isElveted = isElveted == 0 ? 90 : 0;
    update();
  }

  void togglechach() {
    iscach = !iscach;
    update();
  }

  void moveLeft() {
    if (left!= 0) {
      left -= 50;
    update();
    }
    
  }

  void moveRight() {
     if (left <= 200) {

      left += 50;
    update();
    }
  }

  void movetop() {
    if (top!= 0) {
      top -= 50;
    update();
    }
    
  }

  void movebottom() {
    if (top <= 500) {
      top += 50;
    update();
    }
  }

  void changeimage(){
  isShowfirst = !isShowfirst ; 
   update() ;
  }

  void addToList(){
   list.insert(0, "New Item${list.length - 1}") ;
   listKey.currentState?.insertItem(0) ;

update() ;
  }
   void reomveList(int index , BuildContext context){
    String removitem = list[index] ;
    list.removeAt(index);
     listKey.currentState?.removeItem(index, (context, Animation<double> animation) {
        return ListTile(title: Text(removitem) ,textColor: Colors.red,) ;
     }) ;

    update() ;
  }
}

import 'package:flutter/widgets.dart';

class PageFadeTransition extends PageRouteBuilder {
  final dynamic page;

  PageFadeTransition({this.page})
    : super(
        pageBuilder: (context, animation, secondAnimation) => page,
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
      );  
}


class ScaleTrans extends PageRouteBuilder {
  final dynamic page;

  ScaleTrans({this.page})
    : super(
        pageBuilder: (context, animation, secondAnimation) => page,
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) {
              var tween = Tween<double>(begin: 0,end: 1);
              var curve = CurvedAnimation(
                parent: animation,
                curve: Curves.bounceIn,) ; 

             return   ScaleTransition(scale: tween.animate(curve), child: child); 

            }
      );  
}

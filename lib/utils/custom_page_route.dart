import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterTransitionFactory {
  static CustomTransitionPage<void> getTransitionPage(
      {required BuildContext context,
      required GoRouterState state,
      required Widget child,
      required TransitionType type}) {
    return CustomTransitionPage(
        key: state.pageKey,
        child: child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          switch (type) {
            case TransitionType.fade:
              return FadeTransition(opacity: animation, child: child);
            case TransitionType.rotation:
              return RotationTransition(turns: animation, child: child);
            case TransitionType.size:
              return SizeTransition(sizeFactor: animation, child: child);
            case TransitionType.scale:
              return ScaleTransition(scale: animation, child: child);
            case TransitionType.slideFromRight:
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                ).animate(animation),
                child: child,
              );
            //left to right
            case TransitionType.slideFromLeft:
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                ).animate(animation),
                child: child,
              );
            //top to bottom
            case TransitionType.slideFromTop:
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: const Offset(0.0, 0.0),
                ).animate(animation),
                child: child,
              );
            //bottom to top
            case TransitionType.slideFromBottom:
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: const Offset(0.0, 0.0),
                ).animate(animation),
                child: child,
              );
          }
        });
  }
}

enum TransitionType {
  fade,
  rotation,
  scale,
  size,
  slideFromRight,
  slideFromLeft,
  slideFromTop,
  slideFromBottom
}

import 'package:flutter/material.dart';
import 'package:page_transitions_animation/src/pages/page2_page.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Page 1"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.pageview_outlined),
        onPressed: () {
          Navigator.push(context, _renderRoute());
        },
      ),
    );
  }

  Route _renderRoute() {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            Page2Page(),
        transitionDuration: Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);
          // return SlideTransition(
          //   position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
          //       .animate(curvedAnimation),
          //   child: child,
          // );

          // return ScaleTransition(
          //   child: child,
          //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          // );
          //
          // return RotationTransition(
          //   turns: Tween<double>(begin: 0.0, end: 10).animate(curvedAnimation),
          //   child: child,
          // );

          return FadeTransition(
            opacity:
                Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child,
          );
        });
  }
}

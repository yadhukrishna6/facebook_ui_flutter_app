import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String displayimage;
  final bool displaystatus;
  final bool displayborder;
  final double width;
  final double height;
  Profile({
    required this.displayimage,
    required this.displaystatus,
    this.displayborder = false,
    this.width = 50,
    this.height = 50,
  });
  @override
  Widget build(BuildContext context) {
    Widget statusindicator;
    if (displaystatus == true) {
      statusindicator = Positioned(
        bottom: 0,
        right: 1.0,
        child: Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      );
    } else {
      statusindicator = SizedBox();
    }
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayborder
                ? Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  )
                : Border(),
          ),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              displayimage,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        ),
        statusindicator,
      ],
    );
  }
}

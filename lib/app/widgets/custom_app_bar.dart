import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  final IconData lefticon;
  final IconData righticon;
  final Function? leftcallback;

  CustomAppBar(this.lefticon, this.righticon, {this.leftcallback});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftcallback !=null ? () => leftcallback!():null,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: Icon(lefticon),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
            ),
            child: Icon(righticon),
          )
        ],
      ),

    );
  }
}

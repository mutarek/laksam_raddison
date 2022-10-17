import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class FoodList extends StatelessWidget {
  final int slected;
  final Function callback;

  FoodList(this.slected, this.callback);

  List menu = ["Launch", "Set Menu", "Soup", "Chicken","Dinner","Fish","Grill","Noodles"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: slected == index ? kprimaryColor : Colors.white),
                  child: Text(menu[index]),
                ),
              ),
          separatorBuilder: (_,index)=> SizedBox(width: 20,),
          itemCount: menu.length),
    );
  }
}

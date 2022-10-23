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
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: slected == index ? kprimaryColor : Colors.white),
                  child: Text(menu[index]),
                ),
              ),
          separatorBuilder: (_,index)=> const SizedBox(width: 20,),
          itemCount: menu.length),
    );
  }
}

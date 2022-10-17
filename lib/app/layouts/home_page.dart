import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laksam_raddison/app/widgets/custom_app_bar.dart';

import '../constant/colors.dart';
import '../widgets/food_list.dart';
import '../widgets/restaurant_info.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int selected =0;
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(Icons.arrow_back_ios_rounded, Icons.search_outlined),
          RestaurantInfo(),
          FoodList(selected,(int index){
            setState(() {
              selected == index;
            });
          }),
        ],
      ),
    );
  }
}

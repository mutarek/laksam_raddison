import 'package:flutter/cupertino.dart';
import 'package:laksam_raddison/app/models/food_model.dart';

class FoodListView extends StatelessWidget {
final int selected;
final Function callback;
final PageController pageController;
final FoodModel foodModel;


FoodListView(
      this.selected, this.callback, this.pageController, this.foodModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index)=> callback(index),
        children: [
          Text('Sample Item')
        ],
      ),
    );
  }
}

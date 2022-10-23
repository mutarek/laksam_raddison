import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laksam_raddison/app/controllers/home_con.dart';
import 'package:laksam_raddison/app/widgets/custom_app_bar.dart';
import '../constant/colors.dart';
import '../widgets/food_list_view.dart';
import '../widgets/restaurant_info.dart';

class MyHomePage extends StatelessWidget {
  final homeCon = Get.put(MyHomeCon());
  final pageCon = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Obx(()=> Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(Icons.arrow_back_ios_rounded, Icons.search_outlined),
          RestaurantInfo(homeCon.restaurantModel[0]),
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    homeCon.selected.value = index;
                    homeCon.pageController.value.jumpToPage(index);
                  },
                  child: Obx(()=> Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: homeCon.selected.value == index
                            ? kprimaryColor
                            : Colors.white),
                    child: Text(homeCon.restaurantModel[0].menu![index]),
                  ),)
                ),
                separatorBuilder: (_, index) => const SizedBox(
                  width: 20,
                ),
                itemCount: homeCon.FoodList.length),
          ),
        ],
      ),)
    );
  }
}

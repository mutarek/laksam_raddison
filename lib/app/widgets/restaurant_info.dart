import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laksam_raddison/app/models/restaurant_model.dart';

import '../constant/colors.dart';
import '../static/dummy_string.dart';

class RestaurantInfo extends StatelessWidget {
  final Restaurant restaurant;


  RestaurantInfo(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name.toString(),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    restaurant.address.toString(),
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.4)),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(restaurant.logo.toString(),width: 80,scale: 1.0,),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('"${restaurant.desc}"',style: TextStyle(fontSize: 16),),
              Row(
                children: [
                  Icon(Icons.star_outline,
                    color: kprimaryColor,
                  ),
                  Text(restaurant.rating.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

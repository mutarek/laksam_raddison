import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../static/dummy_string.dart';

class RestaurantInfo extends StatelessWidget {
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
                    DummyString().restaurantName,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    DummyString().restaurantAddress,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.4)),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(DummyString().restaurantLogo,width: 80,scale: 1.0,),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('"${DummyString().restaurantDesc}"',style: TextStyle(fontSize: 16),),
              Row(
                children: [
                  Icon(Icons.star_outline,
                    color: kprimaryColor,
                  ),
                  Text(DummyString().restaurantRating,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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

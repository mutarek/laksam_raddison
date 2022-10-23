import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laksam_raddison/app/models/restaurant_model.dart';

class MyHomeCon extends GetxController{
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  var selected = 0.obs;
  var FoodList = ["Launch", "Set Menu", "Soup", "Chicken","Dinner","Fish","Grill","Noodles"].obs;
  var restaurantModel = <Restaurant>[].obs;
  var isLoading = true.obs;
  final pageController = PageController().obs;
  @override
  void onInit() {
    collectionReference = firebaseFirestore.collection('Radisson');
    restaurantModel.bindStream(getRestaurants());
    super.onInit();
  }

  Stream<List<Restaurant>> getRestaurants(){
    return collectionReference.snapshots().map((QuerySnapshot query){
      List<Restaurant> hotels = [];
      for(var hotel in query.docs){
        final hotemote = Restaurant.fromMap(documentSnapshot: hotel);
        hotels.add(hotemote);
        isLoading(false);
      }
      return hotels;
    });
  }

}
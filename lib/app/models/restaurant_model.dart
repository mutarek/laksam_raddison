import 'package:cloud_firestore/cloud_firestore.dart';

class Restaurant {
  String?id;
  String?name;
  String?address;
  String?desc;
  num?rating;
  String?logo;
  List<dynamic>? menu;

  Restaurant({this.name, this.address, this.desc, this.rating, this.logo,
      this.menu});

  Restaurant.fromMap({required DocumentSnapshot documentSnapshot}){
   id = documentSnapshot.id;
   name = documentSnapshot['name'];
   address = documentSnapshot['address'];
   desc = documentSnapshot['desc'];
   rating = documentSnapshot['rating'];
   logo = documentSnapshot['logo'];
   menu = documentSnapshot['menu'];
  }
}
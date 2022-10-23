import 'package:cloud_firestore/cloud_firestore.dart';

class FoodModel{
  String?id;
  String? name;
  num? price;
  String? picture;
  List<String>? elements;

  FoodModel({this.name, this.price, this.picture, this.elements});

  FoodModel.fromMap({required DocumentSnapshot documentSnapshot}){
    id = documentSnapshot.id;
    name = documentSnapshot['name'];
    picture = documentSnapshot['picture'];
    price = documentSnapshot['price'];
  }
}
import 'package:get/get.dart';
import 'package:laksam_raddison/app/layouts/cart.dart';
import 'package:laksam_raddison/app/layouts/home_page.dart';
import 'package:laksam_raddison/app/routes/app_routes.dart';

class AppPages{

  AppPages._();

  static const INITIAL = Routes.Home;

  static final routes = [
    GetPage(
        name: Paths.HOME,
        page: ()=> MyHomePage()),
  ];

}
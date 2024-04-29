
import 'package:ecommercecourse/view/screen/home.dart';
import 'package:ecommercecourse/view/screen/orders/accepted.dart';
import 'package:ecommercecourse/view/screen/orders/pending.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const OrdersPending(),

  OrdersAccepted(),
    Text("setting"),

  ];

  List bottomappbar = [
    {"title": "Pending", "icon": Icons.home},

    {"title": "Accepted", "icon": Icons.add_shopping_cart_outlined},
        {"title": "Setting", "icon": Icons.settings},
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}

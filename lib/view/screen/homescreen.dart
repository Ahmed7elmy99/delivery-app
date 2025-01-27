

import 'package:ecommercecourse/controller/homescreen_controller.dart';
import 'package:ecommercecourse/view/widget/home/custombottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
        appBar: AppBar(title: Text("Orders"),),
       // drawer: Drawer(),
              bottomNavigationBar: const CustomBottomAppBarHome(),
              body: controller.listPage.elementAt(controller.currentpage),
            ));
  }
}

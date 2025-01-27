import 'package:ecommercecourse/controller/orders/accepted_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';

import 'package:ecommercecourse/view/widget/orders/orderslistcardaccepted.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersAccepted extends StatelessWidget {
  const OrdersAccepted({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OrderAcceptedController());
    return Container(
        padding: const EdgeInsets.all(10),
        child: GetBuilder<OrderAcceptedController>(
            builder: ((controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: ((context, index) =>
                        CardOrdersListAccepted(listdata: controller.data[index])))))));
  }
}

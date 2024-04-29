import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class OrdersDetailsData {
  Crud crud;
  OrdersDetailsData(this.crud);
  getData(String deliveryid) async {
    var response = await crud.postData(AppLink.detailsOrders, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }
}

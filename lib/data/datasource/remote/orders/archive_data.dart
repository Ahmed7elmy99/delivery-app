

import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class OrdersArchiveData {
  Crud crud;
  OrdersArchiveData(this.crud);
  getData(String deliveryid) async {
    var response = await crud.postData(AppLink.viewarchiveOrders, {"id": deliveryid});
    return response.fold((l) => l, (r) => r);
  }

}


import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/middleware/mymiddleware.dart';

import 'package:ecommercecourse/view/screen/auth/login.dart';

import 'package:ecommercecourse/view/screen/homescreen.dart';
import 'package:ecommercecourse/view/screen/orders/details.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Login(),  middlewares: [MyMiddleWare()] ),
  // GetPage(name: "/", page: () =>   TestView()),

//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  
  //
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
    GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),

];
//middlewares: [MyMiddleWare()
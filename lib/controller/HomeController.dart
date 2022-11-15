import 'package:get/get.dart';
import 'package:khatabookapp/Model/HomeModel.dart';

import '../dbHelper.dart';

class HomeController extends GetxController
{
  RxList<Map> clientList = <Map>[].obs;


  RxList<Map> productList = <Map>[].obs;

  HomeModel? homeModel;

}
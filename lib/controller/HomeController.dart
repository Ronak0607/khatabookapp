import 'package:get/get.dart';
import 'package:khatabookapp/Model/HomeModel.dart';

import '../dbHelper.dart';

class HomeController extends GetxController {
  RxList<Map> clientList = <Map>[].obs;

  RxInt totalsum = 0.obs;
  RxInt pendingsum = 0.obs;

  RxList<Map> productList = <Map>[].obs;

  HomeModel? homeModel;

  void totalpl() {
    int i = 0;
    totalsum.value = 0;
    pendingsum.value = 0;

    for (i = 0; i < productList.length; i++) {
      if (productList[i]['paymentSTATUS'] == 1) {
        totalsum.value =
            int.parse(productList[i]['productPRICE']) + totalsum.value;
      } else {
        pendingsum.value =
            int.parse(productList[i]['productPRICE']) + pendingsum.value;
      }
    }
  }
}

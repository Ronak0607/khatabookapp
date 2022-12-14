import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/HomeController.dart';
import '../dbHelper.dart';

class creditScreen extends StatefulWidget {
  const creditScreen({Key? key}) : super(key: key);

  @override
  State<creditScreen> createState() => _creditScreenState();
}

class _creditScreenState extends State<creditScreen> {


  TextEditingController txtproductname = TextEditingController();
  TextEditingController txtproductquantity = TextEditingController();
  TextEditingController txtproductprice = TextEditingController();
  TextEditingController txtcurrentdate = TextEditingController();
  TextEditingController txtpaymentstatus = TextEditingController();
  TextEditingController txtcurrenttime = TextEditingController();
  TextEditingController txtduedate = TextEditingController();
  TextEditingController txtpatmenttype = TextEditingController();

  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    DbHelper db = DbHelper();
    homeController!.productList.value = await db.readProductData(homeController!.homeModel!.id!);

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Product Details"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtproductname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Product Name"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtproductquantity,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Product Quantity"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtproductprice,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Product Price"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtcurrentdate,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Current Date"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtcurrenttime,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Current time"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtduedate,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Due date"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: txtpatmenttype,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Payment type"),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        DbHelper db=DbHelper();
                        db.insertProductData(txtproductname.text, txtproductquantity.text, txtproductprice.text, txtcurrentdate.text, 1, txtduedate.text, txtpatmenttype.text, homeController!.homeModel!.id!);
                        getdata();

                        Get.back();
                        homeController!.totalpl();
                      },
                      child: Text(
                        "CREDIT",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
          ),

        ));
  }
}

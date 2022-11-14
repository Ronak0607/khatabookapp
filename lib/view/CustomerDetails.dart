import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:khatabookapp/view/ProductPage.dart';

class customerDetails extends StatefulWidget {
  const customerDetails({Key? key}) : super(key: key);

  @override
  State<customerDetails> createState() => _customerDetailsState();
}

class _customerDetailsState extends State<customerDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Ronak", style: TextStyle(fontSize: 17)),
        leading: Icon(Icons.book_outlined),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Color(0xff487eea), Color(0xff3564cc)]),
          ),
        ),
      ),
      backgroundColor: Color(0xfff3f3f3),
      body: Stack(children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[Color(0xff487eea), Color(0xff3564cc)]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: Color(0x73737373)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total Income",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text(
                                  "\u{20B9} 100",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0b9e84),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total Expense",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text(
                                  "\u{20B9} 0",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffdf2f3a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  border: Border.all(width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.call),
                      color: Colors.blueAccent,
                      iconSize: 35),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      color: Colors.blueAccent,
                      iconSize: 35),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.picture_as_pdf),
                      color: Colors.blueAccent,
                      iconSize: 35),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.currency_rupee),
                      color: Colors.blueAccent,
                      iconSize: 35),
                ],
              ),
            ),
            Container(
              height: 35,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date/Time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff868686)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Remark",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff868686)),
                      ),
                      Text(
                        "Tou Gave  |  You Got",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff868686)),
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 12,
                        color: Color(0x1d000000))
                  ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2-11-2022",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000)),
                              ),
                              Text(
                                "12:00",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 60,
                        height: double.infinity,
                        child: Center(
                          child: Text(
                            "dd",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: double.infinity,
                              width: 70,
                              color: Color(0xffdcfff9),
                              child: Center(
                                child: Text("\u{20B9} 100",style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0b9e84),
                                ),),
                              ),
                            ),
                            Container(
                              height: double.infinity,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffffe9ec),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8))),
                              child: Center(
                                child: Text(
                                  "\u{20B9} 100",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffdf2f3a),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Get.to(productPase());
                  },
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffdf2f3a)),
                    child: Center(
                      child: Text(
                        "YOU GAVE \u{20B9}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.to(productPase());
                  },
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff0b9e84)),
                    child: Center(
                      child: Text(
                        "YOU GOT \u{20B9}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    ));
  }
}

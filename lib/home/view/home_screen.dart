import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_counter_app/home/controller/homeController.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  homeController h1 = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("GetX Counter App"),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${h1.i}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              h1.i++;
                              Get.snackbar("The value is:- ", "${h1.i}");
                            },
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              h1.i.value = (h1.i * 2).toInt();
                              Get.snackbar("The value is:- ", "${h1.i.value}");
                            },
                            child: Text("2X"),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              h1.i.value = (h1.i * 3).toInt();
                              Get.snackbar("The value is:- ", "${h1.i.value}");
                            },
                            child: Text("3X"),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              h1.i.value = (h1.i * 4).toInt();
                              Get.snackbar("The value is:- ", "${h1.i.value}");
                            },
                            child: Text("4X"),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              h1.i.value = (h1.i * 5).toInt();
                              Get.snackbar("The value is:- ", "${h1.i.value}");
                            },
                            child: Text("5X"),
                          ),
                        ],
                      ),
                    ],
                  ))),
        ),
      ),
    );
  }
}

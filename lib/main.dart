import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/view/home_screen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => home_screen(),
      },
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Views/Home/home_screen.dart';

import 'Utils/rout_utils.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: HomePage(),
  //   ),
  // );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: PageRout.pages,
      // initialRoute: NameRouts.home,
      home: HomeScreen(),
      theme: ThemeData(
        fontFamily: 'cinema',
      ),
    ),
  );
}

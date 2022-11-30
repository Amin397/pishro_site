import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/rout_utils.dart';


void main() {

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: PageRout.pages,
      initialRoute: NameRouts.home,
      theme: ThemeData(
        textTheme: const TextTheme(
          subtitle1: TextStyle(
            color: Colors.white,
          ),
        ),
        fontFamily: 'cinema',
        canvasColor: Colors.white,
      ),
    ),
  );
}
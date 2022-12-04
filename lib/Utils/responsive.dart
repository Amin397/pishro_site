import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Responsive extends StatelessWidget {
  const Responsive({Key? key , required this.desktop , required this.mobile}) : super(key: key);


  final Widget mobile;
  final Widget desktop;


  static bool isMobile()=>Get.width < 650.0;
  static bool isTablet()=>Get.width < 1100.0 && Get.width >=650.0;
  static bool isDesktop()=>Get.width >= 1100.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context , BoxConstraints constraints){
        if(constraints.maxWidth >= 1100.0){
          return desktop;
        }else{
          return mobile;
        }
      },
    );
  }
}

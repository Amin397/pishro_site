import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/Home/home_controller.dart';


class BuildFooterWidget extends StatelessWidget {
  const BuildFooterWidget({Key? key , required this.controller}) : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * .7,
    );
  }
}

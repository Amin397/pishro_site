import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Consts/measures.dart';
import 'package:pishro_site/Utils/responsive.dart';

class BuildArticleMiddleImageWidget extends StatelessWidget {
  const BuildArticleMiddleImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Container(
        width: Get.width,
        height: Get.height * .5,
        padding: EdgeInsets.symmetric(
          vertical: Get.height * .03,
        ),
        decoration: BoxDecoration(
          color: mainYellowBgColor,
          boxShadow: shadow(),
        ),
        child: const SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image(
            image: AssetImage(
              'assets/image/artOneImage.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      mobile: Container(
        width: Get.width,
        height: Get.height * .3,
        padding: EdgeInsets.symmetric(
          vertical: Get.height * .03,
        ),
        decoration: BoxDecoration(
          color: mainYellowBgColor,
          boxShadow: shadow(),
        ),
        child: const SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image(
            image: AssetImage(
              'assets/image/artOneImage.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

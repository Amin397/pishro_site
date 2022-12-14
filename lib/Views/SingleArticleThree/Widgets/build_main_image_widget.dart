import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Consts/measures.dart';
import 'package:pishro_site/Utils/responsive.dart';


class BuildMainImageWidget extends StatelessWidget {
  const BuildMainImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height:(Responsive.isMobile())?Get.height * .3: Get.height * .4,
      padding: paddingAll24,
      decoration: BoxDecoration(
        boxShadow: shadow(),
        color: lightYellow,
      ),
      child: const Image(
        image: AssetImage(
          'assets/image/middleThirdImage.png',
        ),
      ),
    );
  }
}
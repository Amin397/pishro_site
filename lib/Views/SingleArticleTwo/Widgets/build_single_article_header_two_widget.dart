import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Controllers/Articles/single_article_two_controller.dart';

import '../../../Consts/measures.dart';
import '../../../Utils/responsive.dart';

class BuildSingleArticleHeaderTwoWidget extends StatelessWidget {
  const BuildSingleArticleHeaderTwoWidget({Key? key, required this.controller})
      : super(key: key);

  final SingleArticleTwoController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: (Responsive.isMobile()) ? Get.height * .35 : Get.height * .85,
      child: Responsive(
        mobile: const SizedBox(),
        desktop: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * .85,
              child: const Image(
                image: AssetImage(
                  'assets/image/secondArtImage.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            _buildTextBox(),
            _buildHeaderButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderButtons() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: Get.height * .1,
        width: Get.width * .35,
        padding: paddingAll16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'درباره ما',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            const Text(
              'وبلاگ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            const Text(
              'محصولات',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            const Text(
              'خانه',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(),
            Image(
              image: const AssetImage(
                'assets/image/logo.png',
              ),
              height: Get.height * .07,
              width: Get.height * .07,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextBox() {
    return Container(
      height: double.maxFinite,
      width: Get.width * .25,
      decoration: BoxDecoration(
        color: lightYellow.withOpacity(.9),
        boxShadow: shadow(),
      ),
      padding: EdgeInsets.symmetric(
        vertical: Get.height * .1,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: Get.width * .1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AutoSizeText(
            'هفت گناه کبیرهٔ آموزش اجباری؟',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontSize: 36.0,
            ),
          ),
          AutoSizeText(
            'چرا آموزش‌های سنتی ممکن است منجر به افسردگی در کودکان‌مان شود؟',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}

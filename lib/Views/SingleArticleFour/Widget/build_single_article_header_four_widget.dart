import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Controllers/Articles/single_article_four_controller.dart';

import '../../../Consts/measures.dart';
import '../../../Utils/responsive.dart';


class BuildSingleArticleHeaderFourWidget extends StatelessWidget {
  const BuildSingleArticleHeaderFourWidget({Key? key , required this.controller}) : super(key: key);



  final SingleArticleFourController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height:(Responsive.isMobile())?Get.height * .35: Get.height,
      child: Responsive(
        mobile: Stack(
          children: [
            _buildHeaderImage(),
            _buildTextBoxMobile(),
            _buildHeaderButtonsMobile(),
          ],
        ),
        desktop: Stack(
          children: [
            _buildHeaderImage(),
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
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                'خانه',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
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


  Widget _buildHeaderButtonsMobile() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: Get.height * .08,
        width: Get.width,
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
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                'خانه',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
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
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: Get.height * .2,
        width: Get.width * .7,
        decoration: BoxDecoration(
          color: textPColor.withOpacity(.8),
          boxShadow: shadow(),
        ),
        padding: paddingSymmetricH30,
        margin: EdgeInsets.symmetric(
          vertical: Get.height * .2,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            AutoSizeText(
              'کودکان چگونه یاد می‌گیرند؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 36.0,
              ),
            ),
            AutoSizeText(
              'نظریه‌های روان‌شناسی درباره فرایند یادگیری کودکان چه می‌گویند؟',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildTextBoxMobile() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: Get.height * .15,
        width: Get.width,
        decoration: BoxDecoration(
          color: textPColor.withOpacity(.8),
          boxShadow: shadow(),
        ),
        padding: paddingSymmetricH30,
        margin: EdgeInsets.symmetric(
          vertical: Get.height * .05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            AutoSizeText(
              'کودکان چگونه یاد می‌گیرند؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
              ),
            ),
            AutoSizeText(
              'نظریه‌های روان‌شناسی درباره فرایند یادگیری کودکان چه می‌گویند؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderImage() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Image(
          image: AssetImage(
            'assets/image/fourHeaderImage.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

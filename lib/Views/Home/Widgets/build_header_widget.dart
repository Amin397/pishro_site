import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Consts/measures.dart';
import 'package:pishro_site/Controllers/Home/home_controller.dart';
import 'package:pishro_site/Utils/responsive.dart';

class BuildHomeHeaderWidget extends StatelessWidget {
  const BuildHomeHeaderWidget({Key? key, required this.controller})
      : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .7,
      width: Get.width,
      child: Responsive(
        mobile: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image(
                image: const AssetImage(
                  'assets/image/shape1.png',
                ),
                height: Get.height * .25,
                // width: Get.width * .5,
              ),
            ),
            _buildHeaderButtonsMobile(),
            Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: const AssetImage(
                  'assets/image/shape2.png',
                ),
                height: Get.height * .2,
                // width: Get.width * .5,
              ),
            ),
            _buildHeaderImageMobile(),
            _buildHeaderPishroTextMobile(),
          ],
        ),
        desktop: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image(
                image: const AssetImage(
                  'assets/image/shape1.png',
                ),
                height: Get.height * .4,
                // width: Get.width * .5,
              ),
            ),
            _buildHeaderButtons(),
            Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: const AssetImage(
                  'assets/image/shape2.png',
                ),
                height: Get.height * .3,
                // width: Get.width * .5,
              ),
            ),
            _buildHeaderImage(),
            _buildHeaderPishroText(),
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
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const Text(
              'وبلاگ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const Text(
              'محصولات',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const Text(
              'خانه',
              style: TextStyle(
                color: Colors.white,
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
  Widget _buildHeaderButtonsMobile() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: Get.height * .1,
        width: Get.width ,
        padding: paddingAll16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AutoSizeText(
              'درباره ما',
              maxLines: 1,
              minFontSize: 16.0,
              maxFontSize: 22.0,
              style: TextStyle(
                color: textPColor,
                fontSize: 18.0,
              ),
            ),
            const AutoSizeText(
              'وبلاگ',
              maxLines: 1,
              minFontSize: 16.0,
              maxFontSize: 22.0,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const AutoSizeText(
              'محصولات',
              maxLines: 1,
              minFontSize: 16.0,
              maxFontSize: 22.0,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const AutoSizeText(
              'خانه',
              maxLines: 1,
              minFontSize: 16.0,
              maxFontSize: 22.0,
              style: TextStyle(
                color: Colors.white,
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

  Widget _buildHeaderImage() {
    return AnimationConfiguration.synchronized(
      duration: const Duration(milliseconds: 1500),
      child: ScaleAnimation(
        curve: Curves.linearToEaseOut,
        child: FadeInAnimation(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: paddingSymmetricV24,
              child: Image(
                image: const AssetImage(
                  'assets/image/headerImage.png',
                ),
                height: Get.height * .45,
                width: Get.width * .6,
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildHeaderImageMobile() {
    return AnimationConfiguration.synchronized(
      duration: const Duration(milliseconds: 1500),
      child: ScaleAnimation(
        curve: Curves.linearToEaseOut,
        child: FadeInAnimation(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: paddingSymmetricV24,
              child: Image(
                image: const AssetImage(
                  'assets/image/headerImage.png',
                ),
                height: Get.height * .3,
                width: Get.width ,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderPishroText() {
    return AnimationConfiguration.synchronized(
      duration: const Duration(milliseconds: 1500),
      child: ScaleAnimation(
        curve: Curves.linearToEaseOut,
        child: FadeInAnimation(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: Get.width * .5,
              height: Get.height * .1,
              margin: EdgeInsets.only(
                top: Get.height * .3,
              ),
              child: const Center(
                child: Text(
                  'توسعه هنر پیشرو پارسی',
                  style: TextStyle(
                    fontSize: 56.0,
                    color: textPColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildHeaderPishroTextMobile() {
    return AnimationConfiguration.synchronized(
      duration: const Duration(milliseconds: 1500),
      child: ScaleAnimation(
        curve: Curves.linearToEaseOut,
        child: FadeInAnimation(
          child: Center(
            child: Container(
              width: Get.width * .5,
              height: Get.height * .1,
              margin: EdgeInsets.only(
                bottom: Get.height * .1,
              ),
              child: const Center(
                child: AutoSizeText(
                  'توسعه هنر پیشرو پارسی',
                  style: TextStyle(
                    fontSize: 36.0,
                    color: textPColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Consts/colors.dart';
import '../../../Consts/measures.dart';
import '../../../Controllers/Articles/single_article_five_controller.dart';
import '../../../Utils/responsive.dart';



class BuildSingleArticleHeaderFiveWidget extends StatelessWidget {
  const BuildSingleArticleHeaderFiveWidget({Key? key , required this.controller}) : super(key: key);


  final SingleArticleFiveController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: (Responsive.isMobile()) ? Get.height * .6 : Get.height * .85,
      child: Responsive(
        mobile: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * .4,
              child: const Image(
                image: AssetImage(
                  'assets/image/fifthHeaderImage.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            _buildTextBoxMobile(),
            _buildHeaderButtonsMobile(),
          ],
        ),
        desktop: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: Get.width * .85,
                height: Get.height * .85,
                child: const Image(
                  image: AssetImage(
                    'assets/image/fifthHeaderImage.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            _buildTextBox(),
            _buildHeaderButtons(),
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
        width: Get.width * .6,
        decoration: BoxDecoration(
          color: lightYellow.withOpacity(.9),
          boxShadow: shadow(),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .05,
        ),
        margin: EdgeInsets.symmetric(
          vertical: Get.height * .1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            AutoSizeText(
              'درباره مکتب یادگیری تجربی چه می‌دانیم؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 36.0,
              ),
            ),
            AutoSizeText(
              'درباره مکتبی که بین زندگی روزمره و درک ارتباط برقرار می‌کند ',
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
    return Positioned(
      right: Get.width * .1,
      child: Container(
        height: Get.height * .5,
        width: Get.width * .3,
        decoration: BoxDecoration(
          color: lightYellow.withOpacity(.9),
          boxShadow: shadow(),
        ),
        // padding: EdgeInsets.symmetric(
        //   horizontal: Get.width * .05,
        // ),
        // margin: EdgeInsets.symmetric(
        //   vertical: Get.height * .1,
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            AutoSizeText(
              'درباره مکتب یادگیری تجربی چه می‌دانیم؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
              ),
            ),
            AutoSizeText(
              'درباره مکتبی که بین زندگی روزمره و درک ارتباط برقرار می‌کند ',
              textAlign: TextAlign.center,
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

  Widget _buildHeaderButtonsMobile() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: Get.height * .1,
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

}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Consts/colors.dart';
import '../../../Consts/measures.dart';
import '../../../Controllers/Articles/single_article_six_controller.dart';
import '../../../Utils/responsive.dart';

class BuildSingleArticleHeaderSixWidget extends StatelessWidget {
  const BuildSingleArticleHeaderSixWidget({Key? key, required this.controller})
      : super(key: key);

  final SingleArticleSixController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: (Responsive.isMobile()) ? Get.height * .35 : Get.height ,
      child: Responsive(
        mobile: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * .35,
              child: const Image(
                image: AssetImage(
                  'assets/image/secondArtImage.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            // _buildTextBoxMobile(),
            // _buildHeaderButtonsMobile(),
          ],
        ),
        desktop: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * .85,
              child: const Image(
                image: AssetImage(
                  'assets/image/fifthHeaderImage.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            _buildTextColor(),
            _buildTextBox(),
            _buildHeaderButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextColor() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: Get.width * .6,
        height: Get.height * .3,
        decoration: BoxDecoration(
          color: textPColor.withOpacity(.6),
        ),
        margin: EdgeInsets.only(
          top: Get.height * .3,
        ),
      ),
    );
  }

  Widget _buildTextBox() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: Get.height * .2,
        width: Get.width * .5,
        decoration: BoxDecoration(
          color: lightYellow.withOpacity(.6),
          boxShadow: shadow(),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .05,
        ),
        margin: EdgeInsets.only(
          top: Get.height * .3,
        ),
        child: const Align(
          alignment: Alignment.centerRight,
          child: AutoSizeText(
            'هفت گناه کبیرهٔ آموزش اجباری؟',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontSize: 36.0,
            ),
          ),
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
            InkWell(
              onTap: (){
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
}

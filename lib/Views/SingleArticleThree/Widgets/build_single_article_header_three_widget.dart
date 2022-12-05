import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Utils/responsive.dart';

import '../../../Consts/colors.dart';
import '../../../Consts/measures.dart';
import '../../../Controllers/Articles/single_article_three_controller.dart';

class BuildSingleArticleHeaderThreeWidget extends StatelessWidget {
  const BuildSingleArticleHeaderThreeWidget(
      {Key? key, required this.controller})
      : super(key: key);

  final SingleArticleThreeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * .9,
      child: Responsive(
        mobile: Stack(
          children: const [],
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

  Widget _buildTextBox() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: Get.height * .2,
        width: Get.width * .8,
        decoration: BoxDecoration(
          color: lightYellow.withOpacity(.8),
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
              'همه نکاتی که باید درباره نظریه انسان‌گرایانه یادگیری بدانید',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 36.0,
              ),
            ),
            AutoSizeText(
              'استراتژی آموزش کودکان ',
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

  Widget _buildHeaderImage() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: double.maxFinite,
        child: Image(
          image: AssetImage(
            'assets/image/thirdHeaderImage.png',
          ),
        ),
      ),
    );
  }
}

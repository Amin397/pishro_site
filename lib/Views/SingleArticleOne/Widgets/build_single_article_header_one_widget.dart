import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/measures.dart';
import 'package:pishro_site/Controllers/Articles/single_article_one_controller.dart';
import 'package:pishro_site/Utils/responsive.dart';

class BuildSingleArticleHeaderOneWidget extends StatelessWidget {
  const BuildSingleArticleHeaderOneWidget({Key? key, required this.controller})
      : super(key: key);
  final SingleArticleOneController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: (Responsive.isMobile()) ? Get.height * .35 : Get.height,
      child: Responsive(
        mobile: const SizedBox(),
        desktop: Stack(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height,
              child: const Image(
                image: AssetImage(
                  'assets/image/artOneHeader.png',
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
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .08,
        ),
        margin: EdgeInsets.symmetric(
          vertical: Get.height * .15,
        ),
        width: Get.width,
        height: Get.height * .23,
        color: Colors.white.withOpacity(.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AutoSizeText(
              'چگونه فرزندان‌مان را خشک می‌کنیم؟',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36.0,
              ),
            ),
            AutoSizeText(
              'چرا بازی‌های سرخوشانه برای رشد کودکان بسیار مهم هستند؟',
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
}

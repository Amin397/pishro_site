import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';

import '../../../Consts/measures.dart';

class BuildFutureWidget extends StatelessWidget {
  const BuildFutureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .6,
      padding: paddingSymmetricH30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildImage(),
          _buildText(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Flexible(
      flex: 1,
      child: Container(
        padding: paddingAll32,
        height: double.maxFinite,
        width: double.maxFinite,
        child: const AnimationConfiguration.synchronized(
          duration: Duration(milliseconds: 1500),
          child: ScaleAnimation(
            curve: Curves.linearToEaseOut,
            child: FadeInAnimation(
              child: Image(
                image: AssetImage(
                  'assets/image/image_future.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Flexible(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(42.0),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            _buildParagraph(
              title: 'چشم انداز',
              text:
                  'ما جهانی در نظر داریم که هر شهروند ایرانی با استفاده از فناوری هوشمند بتواند مصرف فرهنگی، هنری و آموزشی خود را افزایش دهد، آن را بهینه و هوشمندتر کند.',
            ),
            SizedBox(
              height: Get.height * .05,
            ),
            _buildParagraph(
              title: 'ماموریت',
              text:
                  'تلاش می‌کنیم براساس جدیدترین روش‌های ذائقه‌سنجی، برای گروه‌های مختلف اجتماعی، محتوا و پلت‌فرم‌های متناسب طراحی، انتخاب و تولید ‌کنیم.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildParagraph({
    required String title,
    required String text,
  }) {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: textPColor,
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .1,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: textPColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

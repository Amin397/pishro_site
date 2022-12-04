import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Consts/measures.dart';
import 'package:pishro_site/Utils/responsive.dart';

class BuildCompanyInfo extends StatelessWidget {
  const BuildCompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .4,
      padding: paddingSymmetricH30,
      decoration: BoxDecoration(
        color: mainYellowBgColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            spreadRadius: 3.0,
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Responsive(
        mobile: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildTextMobile(),
            _buildImage(),
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildText(),
            _buildImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Flexible(
      flex: 1,
      child: Container(
        padding: paddingAll24,
        height: double.maxFinite,
        width: double.maxFinite,
        child: const AnimationConfiguration.synchronized(
          duration: Duration(milliseconds: 1500),
          child: ScaleAnimation(
            curve: Curves.linearToEaseOut,
            child: FadeInAnimation(
              child: Image(
                image: AssetImage(
                  'assets/image/image_company_info.png',
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
        padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
        height: double.maxFinite,
        width: double.maxFinite,
        child: const AnimationConfiguration.synchronized(
          duration: Duration(milliseconds: 1500),
          child: ScaleAnimation(
            curve: Curves.linearToEaseOut,
            child: FadeInAnimation(
              child: Center(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'در سال ۱۳۹۷، جمع شدیم تا از تجربه‌های‌مان در حوزه فرهنگ و فناوری اطلاعات برای ایجاد، توسعه و سرمایه‌گذاری در کسب‌وکارهای هوشمند در حوزه هنر و فرهنگ و ارائه خدمات در این زمینه استفاده کنیم.',
                    style: TextStyle(
                      color: textPColor,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextMobile() {
    return Flexible(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .07),
        height: double.maxFinite,
        width: double.maxFinite,
        child: const AnimationConfiguration.synchronized(
          duration: Duration(milliseconds: 1500),
          child: ScaleAnimation(
            curve: Curves.linearToEaseOut,
            child: FadeInAnimation(
              child: Center(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'در سال ۱۳۹۷، جمع شدیم تا از تجربه‌های‌مان در حوزه فرهنگ و فناوری اطلاعات برای ایجاد، توسعه و سرمایه‌گذاری در کسب‌وکارهای هوشمند در حوزه هنر و فرهنگ و ارائه خدمات در این زمینه استفاده کنیم.',
                    style: TextStyle(
                      color: textPColor,
                      fontSize: 16.0,
                    ),
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

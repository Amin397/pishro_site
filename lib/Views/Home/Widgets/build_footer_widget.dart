import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/measures.dart';

import '../../../Consts/colors.dart';
import '../../../Controllers/Home/home_controller.dart';

class BuildFooterWidget extends StatelessWidget {
  const BuildFooterWidget({Key? key, required this.controller})
      : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * .7,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: Get.width,
          height: Get.height * .5,
          child: Row(
            children: [_buildConnectionPart(), _buildLogo()],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AnimationConfiguration.synchronized(
                duration: Duration(milliseconds: 1500),
                child: ScaleAnimation(
                  curve: Curves.linearToEaseOut,
                  child: FadeInAnimation(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Center(
                        child: Text(
                          'توسعه هنر پیشرو پارسی',
                          style: TextStyle(
                            fontSize: 68.0,
                            color: textPColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Image(
                image: const AssetImage(
                  'assets/image/logo.png',
                ),
                fit: BoxFit.contain,
                height: Get.height * .15,
                width: Get.height * .15,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildConnectionPart() {
    return Flexible(
      flex: 1,
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: paddingSymmetricH24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.maxFinite,
              height: Get.height * .13,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          AutoSizeText(
                            '02191007494',
                            style: TextStyle(
                              color: textPColor,
                              fontSize: 24.0,
                            ),
                          ),
                          AutoSizeText(
                            '02191007494',
                            style: TextStyle(
                              color: textPColor,
                              fontSize: 24.0,
                            ),
                          ),
                          AutoSizeText(
                            '02191007494',
                            style: TextStyle(
                              color: textPColor,
                              fontSize: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .02,
                  ),
                  Container(
                    padding: paddingAll12,
                    decoration: BoxDecoration(
                      color: textPColor,
                      borderRadius: radiusAll20,
                    ),
                    child: const Icon(
                      Icons.call,
                      color: textYColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: Get.height * .1,
              child: Row(
                children: [
                  const Expanded(
                    child: SizedBox(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: AutoSizeText(
                          'info@pishroparsi.ir',
                          style: TextStyle(
                            color: textPColor,
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .02,
                  ),
                  Container(
                    padding: paddingAll12,
                    decoration: BoxDecoration(
                      color: textPColor,
                      borderRadius: radiusAll20,
                    ),
                    child: const Icon(
                      Icons.mail,
                      color: textYColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: Get.height * .1,
              child: Row(
                children: [
                  const Expanded(
                    child: SizedBox(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: AutoSizeText(
                          'تهران، میدان فلسطین، خیابان طالقانی شرقی، پلاک 399',
                          style: TextStyle(
                            color: textPColor,
                            fontSize: 28.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * .02,
                  ),
                  Container(
                    padding: paddingAll12,
                    decoration: BoxDecoration(
                      color: textPColor,
                      borderRadius: radiusAll20,
                    ),
                    child: const Icon(
                      Icons.location_on,
                      color: textYColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

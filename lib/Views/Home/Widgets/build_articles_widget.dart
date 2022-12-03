import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Controllers/Home/home_controller.dart';

import '../../../Consts/colors.dart';
import '../../../Consts/measures.dart';
import '../../../Models/Home/article_model.dart';

class BuildArticlesWidget extends StatelessWidget {
  const BuildArticlesWidget({Key? key, required this.controller})
      : super(key: key);
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * .45,
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
      child: Column(
        children: [
          _buildTopPart(),
          _buildArticlesList(),
        ],
      ),
    );
  }

  Widget _buildTopPart() {
    return Container(
      width: Get.width,
      height: Get.height * .1,
      padding: paddingSymmetricH30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                Icons.arrow_back_ios,
                color: textPColor,
              ),
              Text(
                'مشاهده بیشتر',
                style: TextStyle(
                  color: textPColor,
                  fontSize: 26.0,
                ),
              )
            ],
          ),
          const Text(
            'مقالات',
            style: TextStyle(
              color: textPColor,
              fontSize: 36.0,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildArticlesList() {
    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        width: Get.width * .6,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: -Get.height * .07,
              child: SizedBox(
                height: Get.height * .5,
                width: Get.width * .6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildArtItem(
                      article: controller.articlesList[3],
                    ),
                    _buildArtItem(
                      article: controller.articlesList[2],
                    ),
                    _buildArtItem(
                      article: controller.articlesList[1],
                    ),
                    _buildArtItem(
                      article: controller.articlesList[0],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildArtItem({
    required ArticleModel article,
  }) {
    return MouseRegion(
      onEnter: (event){
        controller.onHover(article:article);
      },
      onExit: (_){
        controller.onExit();
      },
      child: AnimationConfiguration.synchronized(
        duration: const Duration(milliseconds: 1500),
        child: ScaleAnimation(
          curve: Curves.linearToEaseOut,
          child: FadeInAnimation(
            child: Obx(() => AnimatedContainer(
              duration: const Duration(milliseconds: 370),
              height: (article.isSelected.isTrue)?Get.height * .45:Get.height * .4,
              width: (article.isSelected.isTrue)?Get.width * .14:Get.width * .12,
              decoration: BoxDecoration(
                color: textPColor,
                borderRadius: radiusAll36,
                boxShadow: shadow(),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      margin: paddingAll16,
                      decoration: BoxDecoration(
                        color: articlesBgColor,
                        borderRadius: radiusAll36,
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            article.image,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: SizedBox(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: Center(
                                child: AutoSizeText(
                                  article.title,
                                  maxFontSize: 36.0,
                                  maxLines: 2,
                                  minFontSize: 22.0,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: textYColor,
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: Center(
                                child: AutoSizeText(
                                  article.text,
                                  maxFontSize: 24,
                                  maxLines: 3,
                                  minFontSize: 14.0,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}

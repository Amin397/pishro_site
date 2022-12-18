import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Utils/responsive.dart';

import '../../Models/Home/article_model.dart';
import '../../Utils/rout_utils.dart';
import '../../Views/SingleArticleOne/single_article_one_screen.dart';

class HomeController extends GetxController {
  late PageController pageController;

  RxInt pageViewIndex = 3.obs;

  List<ArticleModel> articlesList = [
    ArticleModel(
      id: 0,
      isSelected: false.obs,
      image: 'assets/image/list1.png',
      text: 'چگونه فرزندانمان را\nخشک می کنیم؟',
      title: 'بازی سرخوشانه',
    ),
    ArticleModel(
      id: 1,
      isSelected: false.obs,
      image: 'assets/image/list2.png',
      text: ' آموزش های سنتی و احتمال\nافسردگی در کودکان',
      title: 'گناهان کبیره مدرسه',
    ),
    ArticleModel(
      id: 2,
      isSelected: false.obs,
      image: 'assets/image/list3.png',
      text: 'استراتژی آموزش کودکان ',
      title: 'نظریه انسان گرایانه',
    ),
    ArticleModel(
      id: 3,
      isSelected: false.obs,
      image: 'assets/image/list4.png',
      text: 'نظریه های روان شناسی\nدرباره فرایند یادگیری\nکودکان',
      title: 'کودکان چگونه\n یاد میگیرند',
    ),
    ArticleModel(
      id: 4,
      isSelected: false.obs,
      image: 'assets/image/list4.png',
      text: 'درباره مکتبی بین زندگی روزمره و \nدرک ارتباط برقرار می کند',
      title: 'درباره مکتب یادگیری \nتجربی چه می دانیم؟ ',
    ),
    ArticleModel(
      id: 5,
      isSelected: false.obs,
      image: 'assets/image/list4.png',
      text: 'روش آموزشی مونته سوری یک \nروش آموزش کودک محور',
      title: 'آموزش مونته سوری\n چیست؟',
    ),
  ];

  late ScrollController scrollController;

  @override
  void onInit() {
    scrollController = ScrollController(
      initialScrollOffset: 0.0,
    );
    pageController = PageController(
      initialPage: pageViewIndex.value,
      viewportFraction:(Responsive.isMobile())? .5: .2,
    );
    super.onInit();
  }

  void onHover({required ArticleModel article}) {
    for (var element in articlesList) {
      element.isSelected(false);
    }

    article.isSelected(true);
  }

  void onExit() {
    for (var element in articlesList) {
      element.isSelected(false);
    }
  }

  void goToArticle({required ArticleModel article}) {
    switch (article.id) {
      case 0:
        {
          Get.toNamed(
            NameRouts.articleOne,
          );
          break;
        }
      case 1:
        {
          Get.toNamed(
            NameRouts.articleTwo,
          );
          break;
        }
      case 2:
        {
          Get.toNamed(
            NameRouts.articleThree,
          );
          break;
        }
      case 3:{
        Get.toNamed(
          NameRouts.articleFour,
        );
        break;
      }
      case 4:{
        Get.toNamed(
          NameRouts.articleFive,
        );
        break;
      }
      default:
        {
          Get.toNamed(
            NameRouts.articleSix,
          );
          break;
        }
    }
  }

  void goToArticlesPart() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
    update(['scroll']);
  }

  void changePage({required int page}) {
    pageViewIndex(page);
  }
}

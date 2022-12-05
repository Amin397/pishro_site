import 'package:get/get.dart';

import '../Views/Home/home_screen.dart';
import '../Views/SingleArticleOne/single_article_one_screen.dart';
import '../Views/SingleArticleThree/single_article_three_screen.dart';
import '../Views/SingleArticleTwo/single_article_two_screen.dart';


class NameRouts{
  static const String home = '/home';
  static const String articleOne = '/articleOne';
  static const String articleTwo = '/articleTwo';
  static const String articleThree = '/articleThree';
}

class PageRout {
  static List<GetPage> pages = [
    GetPage(
      name: NameRouts.home,
      page: () => HomeScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: NameRouts.articleOne,
      page: () => SingleArticleOneScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: NameRouts.articleTwo,
      page: () => SingleArticleTwoScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: NameRouts.articleThree,
      page: () => SingleArticleThreeScreen(),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
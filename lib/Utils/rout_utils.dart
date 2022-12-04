import 'package:get/get.dart';

import '../Views/Home/home_screen.dart';
import '../Views/SingleArticleOne/single_article_one_screen.dart';


class NameRouts{
  static const String home = '/home';
  static const String articleOne = '/articleOne';
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
  ];
}
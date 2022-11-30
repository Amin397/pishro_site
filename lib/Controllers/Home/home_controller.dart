import 'package:get/get.dart';

import '../../Models/Home/article_model.dart';

class HomeController extends GetxController {
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
  ];
}

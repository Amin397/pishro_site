import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Utils/responsive.dart';

import '../../../Consts/measures.dart';

class BuildLastTextWidget extends StatelessWidget {
  const BuildLastTextWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Container(
        width: Get.width,
        height: Get.height * .3,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .25,
        ),
        decoration: BoxDecoration(
          color: textPColor,
          boxShadow: shadow(),
        ),
        child:const Center(
          child: Text(
            'گناهان کبیره مدارس رسمی، در نهایت قدرت تصمیم‌گیری را از کودکان می‌گیرد و اجازه نمی‌دهد قوه خودهدایت‌گری آن‌ها رشد کند. این شکل از مدیریت کودکان، سبب ضعف رشد آن‌ها می‌شود و ما در آینده با آدم‌هایی روبرو می‌شویم که یا اعتمادبه‌نفس کمی دارند یا اگر اعتماد‌به‌نفس خوبی دارند، این مهارت را جایی بیرون از مدرسه فراگرفته‌اند. رفع اشکالات مدارس سنتی می‌‌تواند یک مطالبه فراگیر شود و در این زمینه خانواده‌ّ‌ها نقش برعهده دارند. ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      mobile: Container(
        width: Get.width,
        height: Get.height * .2,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .15,
        ),
        decoration: BoxDecoration(
          color: textPColor,
          boxShadow: shadow(),
        ),
        child:const Center(
          child: Text(
            'گناهان کبیره مدارس رسمی، در نهایت قدرت تصمیم‌گیری را از کودکان می‌گیرد و اجازه نمی‌دهد قوه خودهدایت‌گری آن‌ها رشد کند. این شکل از مدیریت کودکان، سبب ضعف رشد آن‌ها می‌شود و ما در آینده با آدم‌هایی روبرو می‌شویم که یا اعتمادبه‌نفس کمی دارند یا اگر اعتماد‌به‌نفس خوبی دارند، این مهارت را جایی بیرون از مدرسه فراگرفته‌اند. رفع اشکالات مدارس سنتی می‌‌تواند یک مطالبه فراگیر شود و در این زمینه خانواده‌ّ‌ها نقش برعهده دارند. ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Utils/responsive.dart';

class BuildLastTextWidget extends StatelessWidget {
  const BuildLastTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .15,
          vertical: Get.height * .05,
        ),
        child: const Text(
          'خیلی از ماها، مهارت‌های اصلی زندگی‌مان را در قالب بازی با هم‌محله‌ای‌ها و هم‌مدرسه‌های‌مان یاد گرفته‌ایم. همه این را می‌دانیم اما باز به فرزندان خودمان می‌رسد، فکر می‌کنیم حتما باید شیطنت‌ها را کنار بگذارند و فقط به درس فکر کنند. این در حالی است که وقتی برای کودکان، فضاهایی توأم با آزادی و امنیت و وسایلی که بتوانند علایق خودشان را تعقیب کنند مهیا کنیم، آن در طول مسیرهای متفاوت و غیرقابل پیش‌بینی شکوفا می‌شوند و رشد می‌کنند. '
              'اینجا است که مفهومی به نام بازی سرخوشانه اهمیت پیدا می‌کند. بازی سرخوشانه یا بازی ساختار‌نیافته، به بازی‌ای گفته می‌شود که قواعد آن را خود کودکان می‌سازند، و نه مرجعی بیرونی. هدف بازی سرخوشانه این است که بچه‌ها یاد بگیرند چگونه رفتار خودشان را در ارتباط با دیگران سازگار کنند.'
              'کمبود بازی سرخوشانه شاید برخلاف کمبود غذا، هوا یا آب باعث از بین رفتن بُعد فیزیکی نشود، اما سرزندگی کودک را از بین می‌برد و مانع رشد ذهنی او می‌شود. بازی سرخوشانه، ابزاری است که به واسطه آن کودکان یاد می‌گیرند با دیگران ارتباط برقرار کنند، برترس‌های‌شان غلبه کنند، مشکلات‌شان را حل  کنند، و به‌طور کلی کنترل زندگی‌شان را در اختیار بگیرند.'
              'بازی سرخوشانه همچنین نخستین ابزار برای کودکان است تا به‌وسیله آن، مهارت‌‌‌های ذهنی و فیزیکی ضروری برای موفقیت در فرهنگ‌شان را کسب‌، و تمرین کنند. آنچه کودکان به واسطه ابتکار عمل خود در بازی سرخوشانه یاد می‌گیرند، به هیچ روش دیگری قابل وصول نیست. بنابراین بازی‌های سرخوشانه کودکان‌تان را دست کم نگیرید و به آن‌ها اجازه بازی بدهید؛ آن‌ها را تاکسیدرمی نکنید.',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'koodak',
          ),
        ),
      ),
      mobile: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .1,
          vertical: Get.height * .05,
        ),
        child: const Text(
          'خیلی از ماها، مهارت‌های اصلی زندگی‌مان را در قالب بازی با هم‌محله‌ای‌ها و هم‌مدرسه‌های‌مان یاد گرفته‌ایم. همه این را می‌دانیم اما باز به فرزندان خودمان می‌رسد، فکر می‌کنیم حتما باید شیطنت‌ها را کنار بگذارند و فقط به درس فکر کنند. این در حالی است که وقتی برای کودکان، فضاهایی توأم با آزادی و امنیت و وسایلی که بتوانند علایق خودشان را تعقیب کنند مهیا کنیم، آن در طول مسیرهای متفاوت و غیرقابل پیش‌بینی شکوفا می‌شوند و رشد می‌کنند. '
              'اینجا است که مفهومی به نام بازی سرخوشانه اهمیت پیدا می‌کند. بازی سرخوشانه یا بازی ساختار‌نیافته، به بازی‌ای گفته می‌شود که قواعد آن را خود کودکان می‌سازند، و نه مرجعی بیرونی. هدف بازی سرخوشانه این است که بچه‌ها یاد بگیرند چگونه رفتار خودشان را در ارتباط با دیگران سازگار کنند.'
              'کمبود بازی سرخوشانه شاید برخلاف کمبود غذا، هوا یا آب باعث از بین رفتن بُعد فیزیکی نشود، اما سرزندگی کودک را از بین می‌برد و مانع رشد ذهنی او می‌شود. بازی سرخوشانه، ابزاری است که به واسطه آن کودکان یاد می‌گیرند با دیگران ارتباط برقرار کنند، برترس‌های‌شان غلبه کنند، مشکلات‌شان را حل  کنند، و به‌طور کلی کنترل زندگی‌شان را در اختیار بگیرند.'
              'بازی سرخوشانه همچنین نخستین ابزار برای کودکان است تا به‌وسیله آن، مهارت‌‌‌های ذهنی و فیزیکی ضروری برای موفقیت در فرهنگ‌شان را کسب‌، و تمرین کنند. آنچه کودکان به واسطه ابتکار عمل خود در بازی سرخوشانه یاد می‌گیرند، به هیچ روش دیگری قابل وصول نیست. بنابراین بازی‌های سرخوشانه کودکان‌تان را دست کم نگیرید و به آن‌ها اجازه بازی بدهید؛ آن‌ها را تاکسیدرمی نکنید.',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 17.0,
            fontFamily: 'koodak',
          ),
        ),
      ),
    );
  }
}

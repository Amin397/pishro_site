import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildFirstTextThirdArtWidget extends StatelessWidget {
  const BuildFirstTextThirdArtWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * .7,
      child: Column(
        children: [
          _buildFirstPart(),
          _buildSecondPart(),
        ],
      ),
    );
  }

  Widget _buildFirstPart() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .1,
                ),
                child: const Center(
                  child: Text(
                    'برای آموزش دادن کودکان باید استراتژی داشت و خب، آن دسته از استراتژی‌های آموزشی که محوریت را به خود کودک می‌دهند، نتایج بهتری به بار می‌آورند و کمک می‌کنند کودکان فهم و ادراک بهتری به دست بیاورند. این استراتژی‌ها حواس‌شان هست که کودک در مرکز فرایند یادگیری باشد و خود کودک بر فرایند یادگیری‌اش کنترل داشته باشد.\n\n '
                    'ایده‌های یادگیری کودک‌محور یا دانش‌آموزمحور نمونه‌هایی از کاربرد نظریه انسان‌گرایانه در یادگیری هستند. اما این نظریه چه می‌گوید؟',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'koodak',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image(
                    image: AssetImage(
                      'assets/image/shape6.png',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSecondPart() {
    return Flexible(
      flex: 1,
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .1,
        ),
        child: const Center(
          child: Text(
            'این نظریه می‌گوید ذات کودک برای یادگیری بسیار خوب است و انگیزه خوبی برای یادگیری دارد، منتهی باید نیازهای اولیه‌اش برطرف شود تا بتواند به مرحله یادگیری برسد. مثلاً کودکی که گرسنه‌ است نمی‌تواند انگیزه زیادی برای آموزش داشته باشد. عزت نفس یادگیرنده، عنصر محوری در یادگیری است.\n\n'
            'بنیان‌گذاران نظریه انسان‌گرایانه آموزش، آبراهام مازلو، کارل راجرز، و جیمز اف. تی. بوگنتال بودند که این نظریه‌ را در ابتدای قرن بیستم پایه‌گذاری کردند. این نظریه پاسخی انسان‌مدار به نظریه‌های رایج آن زمان، به‌خصوص رفتارگرایی و روان‌کاوی بود که نقش انسان را در یادگیری و امورات انسانی بسیار کم می‌دیدند. اولی نقش اساسی را به محیط می‌داد و دومی به ناخودآگاه.\n\n'
            'انسان‌گرایان عقیده داشتند که محرک انسان در رفتارها و از جمله در آموزش، احساس‌هایش هستند. بنابراین وقتی معلمی رفتار ناشایستی از یک کودک می‌بیند نباید طبق نظریه‌های رفتارگرایی او را به خاطر کارش تنبیه کند یا صرفا روی مشوق‌ها تمرکز کند بلکه باید بتواند احساسات زیربنایی که موجب این رفتار شده‌اند را کشف کند و کودک را در این سطح کمک کنند.\n\n'
            'انسان‌گرایان خیلی بر این مسئله تاکید دارند که اگر نیازهای اولیه انسان برطرف شود، او می‌‌تواند بهترین انتخاب‌ها را داشته باشد و می‌‌تواند خود را شکوفا کند. بنابراین تاکید این نظریه آن است که نیازهای مادی و معنوی کودکان برطرف شود و محیطی امن برای او ساخته شود.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'koodak',
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}

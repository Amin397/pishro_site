import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Utils/responsive.dart';

class BuildMainTextWidget extends StatelessWidget {
  const BuildMainTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: SizedBox(
        width: Get.width,
        height: Get.height * 1.65,
        child: Column(
          children: [
            _buildFirstPart(),
            _buildSecondPart(),
          ],
        ),
      ),
      mobile: SizedBox(
        width: Get.width,
        height: Get.height * 2.15,
        child: Column(
          children: [
            _buildFirstPartMobile(),
            _buildSecondPartMobile(),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstPart() {
    return SizedBox(
      width: Get.width,
      height: Get.height * .5,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Image(
              image: AssetImage(
                'assets/image/shape5.png',
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: Get.height * .5,
              width: Get.width * .7,
              child: const Center(
                child: Text(
                  'آموزش سنتی در مدارس یک اصل اولیه دارد: اینکه همه باید به روش واحدی تحصیل کنند؛ مطالب واحدی را آن هم به روش یکسانی بیاموزند. اما واقعیت این است که یادگیری یک تجربه منحصربه‌فرد شخصی است. بدیهی است که همه فرزندان‌ ایران باید از امکان تحصیل رایگان بهره‌مند باشند اما نظام آموزشی ما هم باید نظامی برای تفاوت‌های فردی کارآمد و سازگار باشد. '
                  'امکانات فناورانه جدید به ما و نظام آموزشی این امکان را می‌دهد که سهم دانش‌آموز و کود را در فرایند یادگیری بیشتر کند و به او آزادی بیشتری بدهد.'
                  'اما نظام‌های فعلی آموزشی در سراسر جهان این ایراد را دارند که فرایند یادگیری را محدود کرده‌اند و همین باعث شده که بسیاری از کودکان از آموزش و یادگیری لذت نبرند. چرا نظام آموزشی سنتی سبب می‌شود کودکان از فرایند آموزش گریزان باشند. پیتر گری، دانشمند علوم شناختی در کالج بوستون که خاطر کتاب یادگیری آزاد بسیار معروف شده است معتقد است مدارس در فرایند آموزش سنتی مرتکب هفت گناه کبیره در قبال کودکان می‌شوند:',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'koodak',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstPartMobile() {
    return SizedBox(
      width: Get.width,
      height: Get.height * .55,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image(
              image: const AssetImage(
                'assets/image/shape5.png',
              ),
              height: Get.height * .4,
              width: Get.height * .4,
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * .1,
              ),
              // height: Get.height * .55,
              width: Get.width,
              child: const Center(
                child: Text(
                  'آموزش سنتی در مدارس یک اصل اولیه دارد: اینکه همه باید به روش واحدی تحصیل کنند؛ مطالب واحدی را آن هم به روش یکسانی بیاموزند. اما واقعیت این است که یادگیری یک تجربه منحصربه‌فرد شخصی است. بدیهی است که همه فرزندان‌ ایران باید از امکان تحصیل رایگان بهره‌مند باشند اما نظام آموزشی ما هم باید نظامی برای تفاوت‌های فردی کارآمد و سازگار باشد.\n '
                  'امکانات فناورانه جدید به ما و نظام آموزشی این امکان را می‌دهد که سهم دانش‌آموز و کود را در فرایند یادگیری بیشتر کند و به او آزادی بیشتری بدهد.\n'
                  'اما نظام‌های فعلی آموزشی در سراسر جهان این ایراد را دارند که فرایند یادگیری را محدود کرده‌اند و همین باعث شده که بسیاری از کودکان از آموزش و یادگیری لذت نبرند. چرا نظام آموزشی سنتی سبب می‌شود کودکان از فرایند آموزش گریزان باشند. پیتر گری، دانشمند علوم شناختی در کالج بوستون که خاطر کتاب یادگیری آزاد بسیار معروف شده است معتقد است مدارس در فرایند آموزش سنتی مرتکب هفت گناه کبیره در قبال کودکان می‌شوند:\n',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'koodak',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSecondPart() {
    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildPinItem(
                      text:
                          'گناه اول: مدارس منکر آزادی کودک هستند؛  آن‌هم بدون دلیل عادلانه و صرفاً متکی به فرایند یعنی برای مدارس صرفا همین مهم است که فرایندهای ابلاغ‌شده از بالا رعایت شوند. در حالی که اصل اول یادگیری آن است که خود کودک مالک فرایند یادگیری است. اگر کودکان مالک فرایند یادگیری شوند، آن‌وقت خودشان برای این یادگیری قواعدی می‌گذارند و همین سبب می‌شود نه تنها افراد صاحب دانش و مهارتی شوند، بلکه کمک می‌کند آدم‌های دموکرات‌تری هم شوند. ',
                      isYellow: true,
                    ),
                    _buildPinItem(
                      text:
                          'گناه دوم: مدارس در فرایند توسعه شخصیت کودکان مداخله می‌کند و همین باعث می‌شود که کنجکاوی آن‌ها در نطفه خفه شود. به‌علاوه اینکه مدیریت یادگیری کاملاً در دست معلم باشد سبب می‌شود کودکان دچار اضطراب شوند.',
                      isYellow: false,
                    ),
                    _buildPinItem(
                      text:
                          ' گناه سوم: تبدیل کردن یادگیری به کار. یادگیری هرقدر هم که در مدرسه جذاب و سرگرم‌کننده باشد باز هم به عنوان کار تعریف می‌شود. مهربان‌ترین معلمان هم از دانش‌آموزان‌شان می‌‌خواهند اول تکالیف‌شان را انجام بدهند تا بتوانند بازی کنند. ',
                      isYellow: true,
                    ),
                    _buildPinItem(
                      text:
                          'گناه چهارم: مدارس دانش‌آموزان را قضاوت می‌کنند به طوری در اغلب موارد آن‌‌ها دچار شرم یا غرور می‌شوند. در واقع برای نظام سنتی آموزش رده‌بندی آدم‌ها بر یادگیری اولویت دارد و همین باعث می‌شود که کودکان همیشه خود را در معرض رقابتی سنگین ببینند.  ',
                      isYellow: false,
                    ),
                    _buildPinItem(
                      text:
                          'گناه پنجم: مدارس جلوی همکاری دانش‌آموزان را می‌‌گیرند چون آن‌ها را به دسته‌های سنی تقسیم‌بندی می‌کنند، بعه کلاس‌های مختلف تقسیم‌می‌کنند و تازه همه آن‌‌ها را در یک محیط رقابتی قرار می‌دهند. این تقسیم‌بندی‌ها نه تنها کودکان را از هم جدا می‌‌کند که باعث رشد قلدری هم می‌شود.',
                      isYellow: true,
                    ),
                    _buildPinItem(
                      text:
                          'گناه ششم: مدرسه تعیین می‌کند که «درست» و «غلط» چیست. مسئله اینجا فقط واقعیات نیستند. همه می‌دانیم که زمین گرد است. اما مثلاً راه‌های حل کردن یک مسئله ریاضی می‌توانند متعدد باشد و همه هم درست باشند. اما «درست» در مدرسه آنی است که معلم می‌گوید. گناه ششم: مدرسه تعیین می‌کند که «درست» و «غلط» چیست. مسئله اینجا فقط واقعیات نیستند. همه می‌دانیم که زمین گرد است. اما مثلاً راه‌های حل کردن یک مسئله ریاضی می‌توانند متعدد باشد و همه هم درست باشند. اما «درست» در مدرسه آنی است که معلم می‌گوید. ',
                      isYellow: false,
                    ),
                    _buildPinItem(
                      text:
                          'گناه هفتم: گناه آخر اما این است که مدرسه تعداد محدودی از مهارت‌‌ها و دانش‌ها را در نظر می‌گیرد. مدرسه بسیاری از مهارت‌‌ها و دانش‌ها را نادیده می‌گیرد و در برنامه درسی‌اش به آن‌‌ها توجه نمی‌کند.',
                      isYellow: true,
                    ),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image(
                    image: AssetImage(
                      'assets/image/secondArticleVec.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildSecondPartMobile() {
    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildPinItemMobile(
                      text:
                          'گناه اول: مدارس منکر آزادی کودک هستند؛  آن‌هم بدون دلیل عادلانه و صرفاً متکی به فرایند یعنی برای مدارس صرفا همین مهم است که فرایندهای ابلاغ‌شده از بالا رعایت شوند. در حالی که اصل اول یادگیری آن است که خود کودک مالک فرایند یادگیری است. اگر کودکان مالک فرایند یادگیری شوند، آن‌وقت خودشان برای این یادگیری قواعدی می‌گذارند و همین سبب می‌شود نه تنها افراد صاحب دانش و مهارتی شوند، بلکه کمک می‌کند آدم‌های دموکرات‌تری هم شوند. ',
                      isYellow: true,
                    ),
                    // SizedBox(height: Get.height * .02,),
                    _buildPinItemMobile(
                      text:
                          'گناه دوم: مدارس در فرایند توسعه شخصیت کودکان مداخله می‌کند و همین باعث می‌شود که کنجکاوی آن‌ها در نطفه خفه شود. به‌علاوه اینکه مدیریت یادگیری کاملاً در دست معلم باشد سبب می‌شود کودکان دچار اضطراب شوند.',
                      isYellow: false,
                    ),
                    // SizedBox(height: Get.height * .02,),
                    _buildPinItemMobile(
                      text:
                          ' گناه سوم: تبدیل کردن یادگیری به کار. یادگیری هرقدر هم که در مدرسه جذاب و سرگرم‌کننده باشد باز هم به عنوان کار تعریف می‌شود. مهربان‌ترین معلمان هم از دانش‌آموزان‌شان می‌‌خواهند اول تکالیف‌شان را انجام بدهند تا بتوانند بازی کنند. ',
                      isYellow: true,
                    ),
                    // SizedBox(height: Get.height * .02,),
                    _buildPinItemMobile(
                      text:
                          'گناه چهارم: مدارس دانش‌آموزان را قضاوت می‌کنند به طوری در اغلب موارد آن‌‌ها دچار شرم یا غرور می‌شوند. در واقع برای نظام سنتی آموزش رده‌بندی آدم‌ها بر یادگیری اولویت دارد و همین باعث می‌شود که کودکان همیشه خود را در معرض رقابتی سنگین ببینند.  ',
                      isYellow: false,
                    ),
                    // SizedBox(height: Get.height * .02,),
                    _buildPinItemMobile(
                      text:
                          'گناه پنجم: مدارس جلوی همکاری دانش‌آموزان را می‌‌گیرند چون آن‌ها را به دسته‌های سنی تقسیم‌بندی می‌کنند، بعه کلاس‌های مختلف تقسیم‌می‌کنند و تازه همه آن‌‌ها را در یک محیط رقابتی قرار می‌دهند. این تقسیم‌بندی‌ها نه تنها کودکان را از هم جدا می‌‌کند که باعث رشد قلدری هم می‌شود.',
                      isYellow: true,
                    ),
                    // SizedBox(height: Get.height * .02,),
                    _buildPinItemMobile(
                      text:
                          'گناه ششم: مدرسه تعیین می‌کند که «درست» و «غلط» چیست. مسئله اینجا فقط واقعیات نیستند. همه می‌دانیم که زمین گرد است. اما مثلاً راه‌های حل کردن یک مسئله ریاضی می‌توانند متعدد باشد و همه هم درست باشند. اما «درست» در مدرسه آنی است که معلم می‌گوید. گناه ششم: مدرسه تعیین می‌کند که «درست» و «غلط» چیست. مسئله اینجا فقط واقعیات نیستند. همه می‌دانیم که زمین گرد است. اما مثلاً راه‌های حل کردن یک مسئله ریاضی می‌توانند متعدد باشد و همه هم درست باشند. اما «درست» در مدرسه آنی است که معلم می‌گوید. ',
                      isYellow: false,
                    ),
                    // SizedBox(height: Get.height * .02,),
                    _buildPinItemMobile(
                      text:
                          'گناه هفتم: گناه آخر اما این است که مدرسه تعداد محدودی از مهارت‌‌ها و دانش‌ها را در نظر می‌گیرد. مدرسه بسیاری از مهارت‌‌ها و دانش‌ها را نادیده می‌گیرد و در برنامه درسی‌اش به آن‌‌ها توجه نمی‌کند.',
                      isYellow: true,
                    ),
                    SizedBox(height: Get.height * .02,),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image(
                    image: AssetImage(
                      'assets/image/secondArticleVec.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPinItem({
    required String text,
    required bool isYellow,
  }) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: Get.width * .05,
              ),
              width: double.maxFinite,
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'koodak',
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage(
              (isYellow)
                  ? 'assets/image/yellowPin.png'
                  : 'assets/image/purplePin.png',
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPinItemMobile({
    required String text,
    required bool isYellow,
  }) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: Get.width * .05,
              ),
              width: double.maxFinite,
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'koodak',
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage(
              (isYellow)
                  ? 'assets/image/yellowPin.png'
                  : 'assets/image/purplePin.png',

            ),
            height: Get.height * .06,
            width: Get.height * .06,
          ),
        ],
      ),
    );
  }
}

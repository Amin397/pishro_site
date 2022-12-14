import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Utils/responsive.dart';

class BuildFirstTextWidget extends StatelessWidget {
  const BuildFirstTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * 1.55,
      child: Responsive(
        desktop: Column(
          children: [
            _buildFirstPart(),
            _buildSecondPart(),
            _buildThirdPart(),
          ],
        ),
        mobile: Column(
          children: [
            _buildFirstPartMobile(),
            _buildSecondPartMobile(),
            _buildThirdPartMobile(),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstPart() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image(
                image: const AssetImage(
                  'assets/image/shape3.png',
                ),
                height: Get.height * .3,
                // width: Get.width * .5,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * .15,
                vertical: Get.height * .05,
              ),
              height: double.maxFinite,
              width: double.maxFinite,
              child: const Center(
                child: Text(
                  'لابد می‌دانید تاکسیدرمی چیست. تاکسیدرمی کاری است که برخی آدم‌ها دوست دارند با حیوانات و پرندگان کنند. آن‌ها را خشک می‌کنند و به عنوان یک شیئ تزئینی به دیوار خانه‌شان می‌زنند. خبر بد اینکه بسیاری از ما با فرزندان‌مان همین کار را می‌کنیم\n\n'
                  '.اغلب ما تصوری تاکسیدرمی‌طور از تربیت فرزندان‌مان داریم. دوست داریم آن‌ها شیطنت نکنند، درس‌شان را بخوانند، مرتب آن‌ها را به کلاس‌های مختلف می‌فرستیم و در نهایت آن‌ها را مانند پرندگان زیبایی که تاکسیدرمی شده‌اند به دوستان‌ و فامیل‌مان نشان می‌دهیم',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'koodak',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstPartMobile() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image(
                image: const AssetImage(
                  'assets/image/shape3.png',
                ),
                height: Get.height * .25,
                // width: Get.width * .8,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * .1,
                vertical: Get.height * .05,
              ),
              height: double.maxFinite,
              width: double.maxFinite,
              child: const Center(
                child: Text(
                  'لابد می‌دانید تاکسیدرمی چیست. تاکسیدرمی کاری است که برخی آدم‌ها دوست دارند با حیوانات و پرندگان کنند. آن‌ها را خشک می‌کنند و به عنوان یک شیئ تزئینی به دیوار خانه‌شان می‌زنند. خبر بد اینکه بسیاری از ما با فرزندان‌مان همین کار را می‌کنیم\n\n'
                  '.اغلب ما تصوری تاکسیدرمی‌طور از تربیت فرزندان‌مان داریم. دوست داریم آن‌ها شیطنت نکنند، درس‌شان را بخوانند، مرتب آن‌ها را به کلاس‌های مختلف می‌فرستیم و در نهایت آن‌ها را مانند پرندگان زیبایی که تاکسیدرمی شده‌اند به دوستان‌ و فامیل‌مان نشان می‌دهیم',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'koodak',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondPart() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: [
            _buildImagePart(),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .05,
                ),
                height: double.maxFinite,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'اغلب ما نگران هستیم فرایند آموزشی آن‌ها منحرف نشود و آن‌ها همه دانش‌های لازم، را یاد بگیرند. بنابراین فکر می‌کنیم باید آن‌ها را تحت یک برنامه منظم و خشک قرار دهیم.'
                    ' غافل از اینکه کودکان با اشتیاق شدید به یادگیری متولد می‌شوند و از نظر ژنتیکی با قابلیت شکفت‌انگیزی برای یادگیری برنامه‌ریزی شده‌اند. آن‌ها در واقع ماشین‌های یادگیری کوچک هستند. بچه‌ها تا حدود چهارسالگی حجم باورنکردنی اطلاعات و مهارت‌ها را بدون هیچ آموزشی فرامی‌گیرند. آن‌ها راه رفتن، دویدن، پریدن، بالا رفتن را یاد می‌گیرند. آن‌ها فهمیدن و صحبت‌کردن به زبان فرهنگی را که در آن متولد شده‌اند، یاد می‌گیرند و با استفاده از آن خواسته‌ها و تمایلات خود را بیان می‌کنند.',
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
      ),
    );
  }


  Widget _buildSecondPartMobile() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: [
            _buildImagePartMobile(),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .05,
                ),
                height: double.maxFinite,
                width: double.maxFinite,
                child: const Center(
                  child: Text(
                    'اغلب ما نگران هستیم فرایند آموزشی آن‌ها منحرف نشود و آن‌ها همه دانش‌های لازم، را یاد بگیرند. بنابراین فکر می‌کنیم باید آن‌ها را تحت یک برنامه منظم و خشک قرار دهیم.'
                    ' غافل از اینکه کودکان با اشتیاق شدید به یادگیری متولد می‌شوند و از نظر ژنتیکی با قابلیت شکفت‌انگیزی برای یادگیری برنامه‌ریزی شده‌اند. آن‌ها در واقع ماشین‌های یادگیری کوچک هستند. بچه‌ها تا حدود چهارسالگی حجم باورنکردنی اطلاعات و مهارت‌ها را بدون هیچ آموزشی فرامی‌گیرند. آن‌ها راه رفتن، دویدن، پریدن، بالا رفتن را یاد می‌گیرند. آن‌ها فهمیدن و صحبت‌کردن به زبان فرهنگی را که در آن متولد شده‌اند، یاد می‌گیرند و با استفاده از آن خواسته‌ها و تمایلات خود را بیان می‌کنند.',
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
      ),
    );
  }

  Widget _buildThirdPart() {
    return Flexible(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .15,
          vertical: Get.height * .05,
        ),
        height: double.maxFinite,
        width: double.maxFinite,
        child: const Center(
          child: Text(
            'وقتی کودکان پنج‌ و شش ساله می‌شوند این طبیعت نیست که این میل و قابلیت فراوان برای یادگیری را خاموش می‌کند بلکه ما آن را به واسطه سیستم آموزش اجباری متوقف می‌کنیم. بزرگترین و ماندگارترین درس مدرسه این است که یادگیری مانند کار (فعالیت سخت) است، و هر زمانی که امکانش وجود داشته باشد باید از آن فرار کرد.'
            'در نگاه اغلب ما، یک تقابل میان آموختن و بازی کردن وجود دارد و فکر می‌کنیم که زمانی برای آموزش وجود دارد و زمانی دیگر برای سرگرم‌بودن. این در حالی است که برای کودکان این‌طور نیست. کودکان بهترین و ماندگارترین آموزش‌ها را در زمان بازی یاد می‌گیرند.'
            'نظام سنتی آموزشی ما، بهترین آموزش را آموزشِ معلومات و محاسبات می‌داند. به همین خاطر است که آموزش ادبیات و ریاضیات در صدر اولویت‌های نظام آموزشی رسمی ماست. بدیهی است که هر آدمی باید بتواند بخواند و بنویسد و بتواند جمع و تفریق کند. بدیهی است که هر آدمی باید چهره‌های فرهنگی و ادبی کشور خودش را بشناسد و برای زندگی کردن محاسبات ریاضی پیچیده را بلد باشد. اما آیا خود ما همه مهارت‌های‌مان را از نظام سفت و سخت آموزشی یاد گرفته‌ایم؟',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'koodak',
            ),
          ),
        ),
      ),
    );
  }



  Widget _buildThirdPartMobile() {
    return Flexible(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .1,
          vertical: Get.height * .05,
        ),
        height: double.maxFinite,
        width: double.maxFinite,
        child: const Center(
          child: Text(
            'وقتی کودکان پنج‌ و شش ساله می‌شوند این طبیعت نیست که این میل و قابلیت فراوان برای یادگیری را خاموش می‌کند بلکه ما آن را به واسطه سیستم آموزش اجباری متوقف می‌کنیم. بزرگترین و ماندگارترین درس مدرسه این است که یادگیری مانند کار (فعالیت سخت) است، و هر زمانی که امکانش وجود داشته باشد باید از آن فرار کرد.'
            'در نگاه اغلب ما، یک تقابل میان آموختن و بازی کردن وجود دارد و فکر می‌کنیم که زمانی برای آموزش وجود دارد و زمانی دیگر برای سرگرم‌بودن. این در حالی است که برای کودکان این‌طور نیست. کودکان بهترین و ماندگارترین آموزش‌ها را در زمان بازی یاد می‌گیرند.'
            'نظام سنتی آموزشی ما، بهترین آموزش را آموزشِ معلومات و محاسبات می‌داند. به همین خاطر است که آموزش ادبیات و ریاضیات در صدر اولویت‌های نظام آموزشی رسمی ماست. بدیهی است که هر آدمی باید بتواند بخواند و بنویسد و بتواند جمع و تفریق کند. بدیهی است که هر آدمی باید چهره‌های فرهنگی و ادبی کشور خودش را بشناسد و برای زندگی کردن محاسبات ریاضی پیچیده را بلد باشد. اما آیا خود ما همه مهارت‌های‌مان را از نظام سفت و سخت آموزشی یاد گرفته‌ایم؟',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'koodak',
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImagePart() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: -50,
              child: Image(
                image: const AssetImage(
                  'assets/image/shape4.png',
                ),
                height: Get.height * .5,
                width: Get.height * .5,
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Image(
                image: const AssetImage(
                  'assets/image/articleVec.png',
                ),
                height: Get.height * .35,
                width: Get.height * .35,
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _buildImagePartMobile() {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: - Get.height * .23,
              child: Image(
                image: const AssetImage(
                  'assets/image/shape4.png',
                ),
                height: Get.height * .4,
                width: Get.height * .4,
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Image(
                image: const AssetImage(
                  'assets/image/articleVec.png',
                ),
                height: Get.height * .35,
                width: Get.height * .35,
              ),
            )
          ],
        ),
      ),
    );
  }
}

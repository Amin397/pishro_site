import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Utils/responsive.dart';

import '../../Controllers/Articles/single_article_six_controller.dart';
import '../Home/Widgets/build_footer_widget.dart';
import 'Widgets/build_first_text_art_six_widget.dart';
import 'Widgets/build_single_article_header_six_widget.dart';

class SingleArticleSixScreen extends StatelessWidget {
  SingleArticleSixScreen({Key? key}) : super(key: key);

  final SingleArticleSixController controller =
      Get.put(SingleArticleSixController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BuildSingleArticleHeaderSixWidget(
                controller: controller,
              ),
              SizedBox(
                height: Get.height * .05,
              ),
              const BuildFirstTextArtSixWidget(),
              SizedBox(
                height: Get.height * .05,
              ),
              _buildMainImage(),
              SizedBox(
                height: Get.height * .05,
              ),
              _buildSecondTextArtSIxWidget(),
              // const BuildSecondTextArtSixWidget(),
              // const BuildLastTextWidget(),
              const BuildFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainImage() {
    return Responsive(
      desktop: Container(
        width: Get.width,
        height: Get.height * .5,
        color: mainYellowBgColor,
        padding: EdgeInsets.symmetric(
          vertical: Get.height * .05,
        ),
        child: const Image(
          image: AssetImage(
            'assets/image/sixVec.png',
          ),
        ),
      ),
      mobile: Container(
        width: Get.width,
        height: Get.height * .4,
        color: mainYellowBgColor,
        padding: EdgeInsets.symmetric(
          vertical: Get.height * .05,
          horizontal: Get.width * .03,
        ),
        child: const Image(
          image: AssetImage(
            'assets/image/sixVec.png',
          ),
        ),
      ),
    );
  }

  Widget _buildSecondTextArtSIxWidget() {
    return Responsive(
      desktop: Container(
        height: Get.height * .4,
        width: Get.width,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .1,
        ),
        child: const Center(
          child: Text(
            '\nاصول و مزایای روش مونته‌سوری'
            '\n\nمحیط آماده: موفقیت روش مونته‌سوری به‌خصوص از منظر موفقیت معلمان به‌شدت به محیط بستگی دارد. ماریا مونته‌سوری برای محیط آماده شش اص کلیدی داشت: آزادی، ساختار و نظم، زیبایی، طبیعت و واقعیت، محبط اجتماعی و محیط فکری. هر اصل روی به‌حداکثر رساندن یادگیری و رشد کودک متمرکز است.'
            '\n\nیادگیری عملی: فلسفه این روش این است: کودک را دنبال کن. براساس این اصل، کودکان، افراد توانایی شمرده می‌شوند که علایق و توانایی‌های‌شان را از طریق علاقه و جذب شدن به درس‌ها و مطالب نشان می‌دهند. کلاس‌های مونته‌سوری اغلب به صورت یک اتاق بازی و یا کارگاه هستند. در این اتاق‌ها ابزارها و وسایلی وجود دارند که کارایی‌شان توسعه تمرکز و همکاری بین کودکان است.'
            '\n\nتخیل: مهم‌ترین مزیت روش مونته‌سوری این است که کودکان را به یادگیرندگان کنجکاو و باتخیل تبدیل کند. معلمان در این روش با سئوال کردن و تشویق کردن سعی می‌کنند انگیزه‌های درونی کودکان را فعال و کانالیزه کنند. در این روند، کودکان هم یاد می‌گیرند که خلاقانه فکر کنند و با کنجکاوی و اعتمادبه‌نفس با چیزهای جدید روبرو شوند.'
            'استقلال: کودکان در این روش از همان ابتدا تشویق می‌شوند مسایل را با استقلال‌رای حل کنند. اگر اتفاق غیرقابل‌پیش‌بینی‌شده‌ای در مسیر حل مسئله رخ بدهد، معلم به او کمک خواهد کرد. کودک در این جا یاد می‌گیرد که هم مستقل باشد و هم با اعتماد‌به‌نفس و در صورت نیاز، درخواست کمک کند. اما اصل این است که کودک بفهمد بیش از انچه تصور می‌کند، توانایی دارد.\n\n',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'koodak',
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      mobile: Container(
        height: Get.height * .7,
        width: Get.width,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .1,
        ),
        child: const Center(
          child: Text(
            '\nاصول و مزایای روش مونته‌سوری'
            '\n\nمحیط آماده: موفقیت روش مونته‌سوری به‌خصوص از منظر موفقیت معلمان به‌شدت به محیط بستگی دارد. ماریا مونته‌سوری برای محیط آماده شش اص کلیدی داشت: آزادی، ساختار و نظم، زیبایی، طبیعت و واقعیت، محبط اجتماعی و محیط فکری. هر اصل روی به‌حداکثر رساندن یادگیری و رشد کودک متمرکز است.'
            '\n\nیادگیری عملی: فلسفه این روش این است: کودک را دنبال کن. براساس این اصل، کودکان، افراد توانایی شمرده می‌شوند که علایق و توانایی‌های‌شان را از طریق علاقه و جذب شدن به درس‌ها و مطالب نشان می‌دهند. کلاس‌های مونته‌سوری اغلب به صورت یک اتاق بازی و یا کارگاه هستند. در این اتاق‌ها ابزارها و وسایلی وجود دارند که کارایی‌شان توسعه تمرکز و همکاری بین کودکان است.'
            '\n\nتخیل: مهم‌ترین مزیت روش مونته‌سوری این است که کودکان را به یادگیرندگان کنجکاو و باتخیل تبدیل کند. معلمان در این روش با سئوال کردن و تشویق کردن سعی می‌کنند انگیزه‌های درونی کودکان را فعال و کانالیزه کنند. در این روند، کودکان هم یاد می‌گیرند که خلاقانه فکر کنند و با کنجکاوی و اعتمادبه‌نفس با چیزهای جدید روبرو شوند.'
            'استقلال: کودکان در این روش از همان ابتدا تشویق می‌شوند مسایل را با استقلال‌رای حل کنند. اگر اتفاق غیرقابل‌پیش‌بینی‌شده‌ای در مسیر حل مسئله رخ بدهد، معلم به او کمک خواهد کرد. کودک در این جا یاد می‌گیرد که هم مستقل باشد و هم با اعتماد‌به‌نفس و در صورت نیاز، درخواست کمک کند. اما اصل این است که کودک بفهمد بیش از انچه تصور می‌کند، توانایی دارد.\n\n',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'koodak',
              fontSize: 17.0,
            ),
          ),
        ),
      ),
    );
  }
}

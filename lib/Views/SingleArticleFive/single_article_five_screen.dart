import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';
import 'package:pishro_site/Consts/measures.dart';

import '../../Controllers/Articles/single_article_five_controller.dart';
import '../Home/Widgets/build_footer_widget.dart';
import 'Widgets/build_single_article_header_five_widget.dart';

class SingleArticleFiveScreen extends StatelessWidget {
  SingleArticleFiveScreen({Key? key}) : super(key: key);

  final SingleArticleFiveController controller =
      Get.put(SingleArticleFiveController());

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
              BuildSingleArticleHeaderFiveWidget(
                controller: controller,
              ),
              SizedBox(
                height: Get.height * .1,
              ),
              _buildFirstText(),
              SizedBox(
                height: Get.height * .1,
              ),
              _buildMainImage(),
              SizedBox(
                height: Get.height * .2,
              ),
              _buildSecondText(),
              // const BuildMainTextWidget(),
              // const BuildLastTextWidget(),
              const BuildFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFirstText() {
    return Container(
      width: Get.width,
      height: Get.height * .7,
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * .1,
      ),
      child: const Center(
        child: Text(
          'یاد گرفتن از طریق انجام دادن؛ این عصاره مکتب یادگیری تجربی است. ایده اصلی این مکتب آن است که بهترین راه برای یادگیری، تجربه کردن است. این تجربیات برای مدتی طولانی در ذهن کودک می‌ماند چرا که او این تجربیات را خودش درک کرده است.\n\n '
          'در این مکتب، وظیفه معلم آن است که محیط‌هایی فراهم کند که کودکان بتوانند هم‌زمان تجربه کنند و یاد بگیرند.\n\n'
          'برای نمونه، به جای مطالعه حیوانات در کتاب‌ها، می‌توان کودکان را به باغ وحش ببرید یا به جای اینکه بچه‌ها فتوسنتز را در کتاب‌ها بخوانند می‌توانند خودشان گیاه پرورش دهند و تاثیر نور بر گیاهان را مشاهده کنند.\n\n'
          'ایده یادگیری تجربی بیش از همه مدیون کارهای نظری و تجربی دیوید کولب است. کولب مدل نظری‌اش درباره یادگیری تجربی را در سال ۱۹۸۴ منتشر کرد. او در طراحی این مدل بیش از همه تحت‌تاثیر نظریه‌پردازانی مانند جان دیویی، کرت لوین و ژان پیاژه بود.\n\n'
          'در این مدل نظری، فرایند یادگیری شامل چهار مرحله است: یادگیری انضمامی، مشاهده تاملی، مفهوم‌سازی انتزاعی، آزمایش فعال.\n\n'
          'در دو مرحله ابتدایی - یادگیری انضمامی و مشاهده تاملی- کودک یک تجربه را درک می‌کند. در دو مرحله بعدی، این تجربه به فهم تبدیل می‌شود. کولب می‌گوید که هر یادگیری موثری شامل این حلقه چهارگانه است.\n\n'
          'یادگیری انضمامی زمانی است که کودک تجربه جدیدی به دست می‌آورد یا تجربه‌ای در گذشته را به روش جدید تفسیر می‌کند. در مرحله مشاهده تاملی، کودک در مورد تجربه‌ای که به دست آورده، تامل می‌کند. کودک از منظر تجربیات قبلی و درک خود برای فهم و درک معنای این تجربه جدید استفاده می‌کند.\n\n'
          'مفهوم‌سازی انتزاعی زمان رخ می‌دهد که کودک براساس تجربه جدید و تاملاتش درباره آن، ایده‌های جدیدی را شکل می‌دهد یا تفکرات قبلی‌اش را بازتنظیم می‌کند.\n\n'
          'آزمایش فعال مرحله آخر است و زمانی رخ می‌دهد که کودک ایده‌های جدیدش را در دنیای اطرافش به توبه آزمایش می‌‌گذارد تا ببینید نتیجه تغییرات و اصلاحات براساس ایده‌های جدید چیست؟ آیا براساس ایده‌های جدید باید جهان پیرامون را تغییر داد یا نه؟\n\n'
          'نکته جالب نظریه کولب آن است که کودکان و یادگیرندگان را یک دست و یک جور نمی‌بیند. او معتقد است که افراد با توجه به توانایی‌ها و ویژگی‌های‌شان به اشکال مختلفی وارد چرخه آموزش می‌شوند و هرکدام در یک مرحله قدرت بیشتری دارند. براین اساس او چهار نوع کودک یا یادگیرنده را از هم جدا می‌کند. \n\n',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'koodak',
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  Widget _buildMainImage() {
    return Container(
      width: Get.width,
      height: Get.height * .4,
      decoration: BoxDecoration(
        boxShadow: shadow(),
        color: textPColor.withAlpha(100),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -Get.height * .15,
            left: Get.width * .25,
            child: SizedBox(
              height: Get.height * .5,
              width: Get.width * .45,
              child: const Image(
                image: AssetImage(
                  'assets/image/fiveVec.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSecondText() {
    return Container(
      width: Get.width,
      height: Get.height * .5,
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * .1,
      ),
      child: const Center(
        child: Text(
          '\n\n۱) یادگیرندگان واگرا: این یادگیرندگان بر جزئیات و نگاه ویژه خود تاکید دارند. آن‌ها بیشتر بر مشاهده تاکید دارند تا انجام‌دادن و قدرت بالایی بر تخیل دارند. به کار گروهی علاقه دارند و فرهنگ‌ها و مردمان را دوست دارند. این‌ها بر یادگیری انضمامی و مشاهده تاملی تمرکز می‌کنند.'
          '\n\n۲) یادگیرندگان جذب کننده: این دسته مفاهیم و امور انتزاعی را بر امور انضمامی ترجیح می‌دهند و به دریافت اطلاعات تمیز و روشن و تامل در مدل‌های تحلیلی علاقه دارند. این یادگیرندگان در چرخه کولب، بر مفهوم‌سازی انتزاعی و آزمایش فعال تمرکز دارند.'
          '\n\n۳) یادگیرندگان همگرا: این یادگیرندگان به حل مسئله علاقه دارند. آن‌ها انجام دادن کارها و انجام کارهای فنی را دوست دارند. این‌ها هم آزمایش فعال و مفهوم‌سازی انتزاعی تمرکز دارند.'
          '\n\n۴) یادگیرندگان سازگار: این یادگیرندگان به‌شدت واقع‌گرا هستند و عملی بودن چیزهای جدید را دوست دارند. آن‌ها از چالش‌های جدید خوششان می‌آید و از شعود برای کمک به حل مشکلات استفاده می‌کنند. آن‌ها در چرخه یادگیری کولب، روی یادگیری انضمامی و آزمایش فعال، متمرکز هستند.'
          '\n\nیادگیری تجربی مزایای زیادی دارند اما مهم‌ترین مزيتش این است که کودکان هرچیزی را که یاد می‌گیرند فورا به صورت تجربه‌ای در جهان واقعی به کار می‌گیرند. به‌علاوه، این نحوه آموزش، کار تیمی را تقویت می‌کند و نکته آخر اینکه، این‌طور آموزش برای کودکان هیجان‌انگیزتر و سرگرم‌کننده‌تر است و آن‌ها رغبت بیشتری به این شکل از آموزش دارند.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'koodak',
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}

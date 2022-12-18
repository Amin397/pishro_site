import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/responsive.dart';

class BuildFirstTextArtSixWidget extends StatelessWidget {
  const BuildFirstTextArtSixWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Container(
        width: Get.width,
        height: Get.height * .6,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .1,
        ),
        child: const Center(
          child: Text(
            'روش آموزشی منته‌سوری (Montessori) یک روش آموزش کودک‌محور است. این روش باور دارد که کودکان می‌توانند از طریق تجربه خود و به شیوه خود یاد بگیرند. در این روش، کودکان براساس محدوده سنی و نه براساس سطح کلاس با هم هم‌گروه می‌شوند. معلم هم وظیفه دارد که کاوش و همکاری کودکان با یکدیگر را تسهیل کند.\n\n'
                'کلاس درس مونته‌سوری شامل چند ایستگاه کار یا فعالیت است و کودکان تشویق می‌شوند که به شیوه خودشان «تکالیف» هر ایستگاه را انجام بدهند. آموزش ایستگاه به ایستگاه جلو می‌رود و معلم در هر ایستگاه بهع جای آموزش، راهنمایی می‌کند. ارزیابی کودکان در این روش، غیرسنتی است و بیشتر بر رشد اجتماعی، عاطفی، فکری و جسمی کودک تمرکز دارد؛ در برابر روش سنتی که یک نمره استاندارد به همه می‌دهد.\n\n'
                'یک مطالعه تحقیقی نشان داده که آدم‌هایی که در کودکی حداقل دو سال را در محیط مونته‌سوری گذرانده‌اند، در بزرگسالی احساس خوشبختی بیشتری می‌کنند.\n\n'
                'ماریه مونته‌سوری که بود؟\n\n'
                'ماریا مونته‌سوری (۱۸۷۰-۱۹۵۲) پزشک و مردم‌شناس ایتالیایی بود. او یکی از اولین زنانی بود که در ایتالیا مدرک پزشکی گرفت. او خود را وقف درک رشد کودکان کرد. کشف مونته‌سوری این بود که وقتی به کودکان ابزارهایی داده شود که مستقل شوند و بدل به یادگیرندگان خودآموز شوند، نتیجه باورنکردنی و ورای انتظارات خواهد بود. مونته‌سوری معتقد بود کودکان دارای سرشتی کنجکاو و علاقه‌مند به کار هستند؛ و اگر به درستی تشویق شوند، این سرشت خودش را آشکار می‌‌کند.\n\n'
                'در طول سالیان متمادی، مفاهیم و ساختارهای متعددی را بنیان گذاشت و توسعه داد و اکنون این مفاهیم و ساختارها، بنیان روش مونته‌سوری را تشکیل می‌دهند. او در سال ۱۹۲۹، انجمن بین‌المللی مونته‌سوری را تاسیس کرد که هنوز هم وجود دارد و برای آموزش معلمانی به این سبک فعالیت می‌کند.\n\n'
                'بیشتر پیش‌دبستانی‌های سنتی بر بازی و اجتماعی‌شدن تمرکز می‌کنند. اما در پیش‌دبستانی‌ مونته‌سوری، تعاملات کودک به عنوان «کار» و بخشی از اجزای سازنده یادگیری‌‌های بعدی در نظر گرفته می‌شود.\n\n',
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
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .1,
        ),
        child: const Center(
          child: Text(
            'روش آموزشی منته‌سوری (Montessori) یک روش آموزش کودک‌محور است. این روش باور دارد که کودکان می‌توانند از طریق تجربه خود و به شیوه خود یاد بگیرند. در این روش، کودکان براساس محدوده سنی و نه براساس سطح کلاس با هم هم‌گروه می‌شوند. معلم هم وظیفه دارد که کاوش و همکاری کودکان با یکدیگر را تسهیل کند.\n\n'
                'کلاس درس مونته‌سوری شامل چند ایستگاه کار یا فعالیت است و کودکان تشویق می‌شوند که به شیوه خودشان «تکالیف» هر ایستگاه را انجام بدهند. آموزش ایستگاه به ایستگاه جلو می‌رود و معلم در هر ایستگاه بهع جای آموزش، راهنمایی می‌کند. ارزیابی کودکان در این روش، غیرسنتی است و بیشتر بر رشد اجتماعی، عاطفی، فکری و جسمی کودک تمرکز دارد؛ در برابر روش سنتی که یک نمره استاندارد به همه می‌دهد.\n\n'
                'یک مطالعه تحقیقی نشان داده که آدم‌هایی که در کودکی حداقل دو سال را در محیط مونته‌سوری گذرانده‌اند، در بزرگسالی احساس خوشبختی بیشتری می‌کنند.\n\n'
                'ماریه مونته‌سوری که بود؟\n\n'
                'ماریا مونته‌سوری (۱۸۷۰-۱۹۵۲) پزشک و مردم‌شناس ایتالیایی بود. او یکی از اولین زنانی بود که در ایتالیا مدرک پزشکی گرفت. او خود را وقف درک رشد کودکان کرد. کشف مونته‌سوری این بود که وقتی به کودکان ابزارهایی داده شود که مستقل شوند و بدل به یادگیرندگان خودآموز شوند، نتیجه باورنکردنی و ورای انتظارات خواهد بود. مونته‌سوری معتقد بود کودکان دارای سرشتی کنجکاو و علاقه‌مند به کار هستند؛ و اگر به درستی تشویق شوند، این سرشت خودش را آشکار می‌‌کند.\n\n'
                'در طول سالیان متمادی، مفاهیم و ساختارهای متعددی را بنیان گذاشت و توسعه داد و اکنون این مفاهیم و ساختارها، بنیان روش مونته‌سوری را تشکیل می‌دهند. او در سال ۱۹۲۹، انجمن بین‌المللی مونته‌سوری را تاسیس کرد که هنوز هم وجود دارد و برای آموزش معلمانی به این سبک فعالیت می‌کند.\n\n'
                'بیشتر پیش‌دبستانی‌های سنتی بر بازی و اجتماعی‌شدن تمرکز می‌کنند. اما در پیش‌دبستانی‌ مونته‌سوری، تعاملات کودک به عنوان «کار» و بخشی از اجزای سازنده یادگیری‌‌های بعدی در نظر گرفته می‌شود.\n\n',
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

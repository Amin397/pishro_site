import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Consts/colors.dart';

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

              const BuildFirstTextArtSixWidget(),
              SizedBox(
                height: Get.height * .1,
              ),
              _buildMainImage(),
              SizedBox(
                height: Get.height * .1,
              ),
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
    return Container(
      width: Get.width,
      height: Get.height * .5,
      color: mainYellowBgColor,
      padding: EdgeInsets.symmetric(
        vertical: Get.height * .05,
      ),
      child: Image(
        image: AssetImage(
          'assets/image/sixVec.png',
        ),
      ),
    );
  }
}

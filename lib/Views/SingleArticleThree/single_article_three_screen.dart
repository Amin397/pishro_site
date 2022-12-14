import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/Articles/single_article_three_controller.dart';
import '../Home/Widgets/build_footer_widget.dart';
import 'Widgets/build_first_text_third_art_widget.dart';
import 'Widgets/build_last_text_third_art_widget.dart';
import 'Widgets/build_main_image_widget.dart';
import 'Widgets/build_single_article_header_three_widget.dart';


class SingleArticleThreeScreen extends StatelessWidget {
  SingleArticleThreeScreen({Key? key}) : super(key: key);

  final SingleArticleThreeController controller = Get.put(SingleArticleThreeController());

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
              BuildSingleArticleHeaderThreeWidget(
                controller: controller,
              ),
              const BuildFirstTextThirdArtWidget(),
              SizedBox(
                height: Get.height * .03,
              ),
              const BuildMainImageWidget(),
              SizedBox(
                height: Get.height * .03,
              ),
              const BuildLastTextThirdArtWidget(),
              const BuildFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

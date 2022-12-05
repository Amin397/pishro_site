import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pishro_site/Views/SingleArticleTwo/Widgets/build_last_text_widget.dart';

import '../../Controllers/Articles/single_article_two_controller.dart';
import '../Home/Widgets/build_footer_widget.dart';
import 'Widgets/build_main_text_widget.dart';
import 'Widgets/build_single_article_header_two_widget.dart';

class SingleArticleTwoScreen extends StatelessWidget {
  SingleArticleTwoScreen({Key? key}) : super(key: key);

  final SingleArticleTwoController controller =
      Get.put(SingleArticleTwoController());

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
              BuildSingleArticleHeaderTwoWidget(
                controller: controller,
              ),
              const BuildMainTextWidget(),
              const BuildLastTextWidget(),
              const BuildFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
